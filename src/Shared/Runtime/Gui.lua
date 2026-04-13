local Players = game:GetService("Players")

local GuiRuntime = {}
GuiRuntime.__index = GuiRuntime

local function resolveBundle(moduleResult)
	if typeof(moduleResult) == "Instance" then
		return moduleResult:Clone()
	end

	if type(moduleResult) == "function" then
		local built = moduleResult()
		if typeof(built) == "Instance" then
			return built
		end
	end

	if type(moduleResult) == "table" then
		if typeof(moduleResult.Root) == "Instance" then
			return moduleResult.Root:Clone()
		end
		if type(moduleResult.Create) == "function" then
			local built = moduleResult.Create()
			if typeof(built) == "Instance" then
				return built
			end
		end
		if type(moduleResult.Build) == "function" then
			local built = moduleResult.Build()
			if typeof(built) == "Instance" then
				return built
			end
		end
		if type(moduleResult.New) == "function" then
			local built = moduleResult.New()
			if typeof(built) == "Instance" then
				return built
			end
		end
	end

	error("GuiRuntime: unsupported serialized GUI format")
end

local function disableEmbeddedScripts(root)
	for _, desc in ipairs(root:GetDescendants()) do
		if desc:IsA("LocalScript") or desc:IsA("Script") then
			pcall(function()
				desc.Disabled = true
			end)
		end
	end
end

function GuiRuntime.new(context)
	local self = setmetatable({}, GuiRuntime)
	self.Context = context
	self.PlayerGui = Players.LocalPlayer:WaitForChild("PlayerGui")
	return self
end

function GuiRuntime:_trackGui(inst)
	inst:SetAttribute("EmoteProperty", true)
	self.Context:trackObject(inst)
	return inst
end

function GuiRuntime:_removeExisting(name)
	local existing = self.PlayerGui:FindFirstChild(name)
	if existing then
		pcall(function()
			existing:Destroy()
		end)
	end
end

function GuiRuntime:_prepareSupport()
	shared.sfx = shared.sfx or function() end

	if not self.Context.Character:FindFirstChild("Communicate") then
		local remote = Instance.new("RemoteEvent")
		remote.Name = "Communicate"
		remote.Parent = self.Context.Character
		self.Context:trackObject(remote)
	end
end

function GuiRuntime:mount(moduleResult, nameHint, keepScripts)
	self:_prepareSupport()

	local built = resolveBundle(moduleResult)
	local root

	if built:IsA("ScreenGui") then
		root = built
		root.Name = nameHint or root.Name
		root.ResetOnSpawn = false
		root.Parent = self.PlayerGui
	else
		root = Instance.new("ScreenGui")
		root.Name = nameHint or built.Name
		root.ResetOnSpawn = false
		root.IgnoreGuiInset = true
		built.Parent = root
		root.Parent = self.PlayerGui
	end

	if not keepScripts then
		disableEmbeddedScripts(root)
	end

	self:_trackGui(root)
	return root
end

function GuiRuntime:addHotbar(moduleResult)
	self:_removeExisting("Hotbar")
	return self:mount(moduleResult, "Hotbar", false)
end

function GuiRuntime:addBar(moduleResult)
	self:_removeExisting("Bar")
	return self:mount(moduleResult, "Bar", false)
end

function GuiRuntime:addEmotes(moduleResult)
	self:_removeExisting("Emotes")
	return self:mount(moduleResult, "Emotes", false)
end

function GuiRuntime:addIcon(moduleResult)
	self:_removeExisting("Icon")
	return self:mount(moduleResult, "Icon", false)
end

function GuiRuntime:addNewIcon(moduleResult)
	self:_removeExisting("NewIcon")
	return self:mount(moduleResult, "NewIcon", false)
end

return GuiRuntime
