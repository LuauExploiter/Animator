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

function GuiRuntime:mount(moduleResult, nameHint)
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

	self:_trackGui(root)
	return root
end

function GuiRuntime:addTopbar(moduleResult)
	self:_removeExisting("EmotesTopbar")
	return self:mount(moduleResult, "EmotesTopbar")
end

function GuiRuntime:addHotbar(moduleResult)
	self:_removeExisting("TSBHotbar")
	return self:mount(moduleResult, "TSBHotbar")
end

return GuiRuntime
