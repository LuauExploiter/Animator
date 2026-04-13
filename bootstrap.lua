local Players = game:GetService("Players")

local BASE = "https://raw.githubusercontent.com/LuauExploiter/Death/refs/heads/main/"

local MODULE_URLS = {
	["src/Loader.lua"] = BASE .. "src/Loader.lua",

	["src/Shared/Animator/Source/Main.lua"] = BASE .. "src/Shared/Animator/Source/Main.lua",

	["src/Shared/Runtime/Character.lua"] = BASE .. "src/Shared/Runtime/Character.lua",
	["src/Shared/Runtime/Camera.lua"] = BASE .. "src/Shared/Runtime/Camera.lua",
	["src/Shared/Runtime/Sound.lua"] = BASE .. "src/Shared/Runtime/Sound.lua",
	["src/Shared/Runtime/Cleanup.lua"] = BASE .. "src/Shared/Runtime/Cleanup.lua",
	["src/Shared/Runtime/VFX.lua"] = BASE .. "src/Shared/Runtime/VFX.lua",
	["src/Shared/Runtime/RigMap.lua"] = BASE .. "src/Shared/Runtime/RigMap.lua",
	["src/Shared/Runtime/Input.lua"] = BASE .. "src/Shared/Runtime/Input.lua",
	["src/Shared/Runtime/Mobile.lua"] = BASE .. "src/Shared/Runtime/Mobile.lua",
	["src/Shared/Runtime/Http.lua"] = BASE .. "src/Shared/Runtime/Http.lua",
	["src/Shared/Runtime/Util.lua"] = BASE .. "src/Shared/Runtime/Util.lua",

	["src/GameAdapters/Universal.lua"] = BASE .. "src/GameAdapters/Universal.lua",

	["src/Emotes/Death/Manifest.lua"] = BASE .. "src/Emotes/Death/Manifest.lua",
	["src/Emotes/Death/AnimationData.lua"] = BASE .. "src/Emotes/Death/AnimationData.lua",
	["src/Emotes/Death/Sounds.lua"] = BASE .. "src/Emotes/Death/Sounds.lua",
	["src/Emotes/Death/VFX.lua"] = BASE .. "src/Emotes/Death/VFX.lua",
	["src/Emotes/Death/Camera.lua"] = BASE .. "src/Emotes/Death/Camera.lua",
	["src/Emotes/Death/Cleanup.lua"] = BASE .. "src/Emotes/Death/Cleanup.lua",
	["src/Emotes/Death/Assets.lua"] = BASE .. "src/Emotes/Death/Assets.lua",

	["assets/vfx/death/BadWolf.lua"] = BASE .. "assets/vfx/death/BadWolf.lua",
}

local moduleCache = {}
local nodeByPath = {}

local function makeNode(name, path, parent, isModule)
	local node = {
		Name = name,
		__path = path,
		__parent = parent,
		__children = {},
		__isModule = isModule or false,
	}
	nodeByPath[path] = node
	return node
end

local function addChild(parent, child)
	parent.__children[child.Name] = child
end

local function FindFirstChild(self, name)
	return self.__children[name]
end

local function WaitForChild(self, name)
	local child = self.__children[name]
	if child then
		return child
	end
	error(("FakeInstance %s missing child %s"):format(self.__path, tostring(name)))
end

local function IsA(self, className)
	if className == "ModuleScript" then
		return self.__isModule
	end
	if className == "Folder" then
		return not self.__isModule
	end
	return false
end

local function attachMethods(node)
	node.Parent = node.__parent
	node.FindFirstChild = FindFirstChild
	node.WaitForChild = WaitForChild
	node.IsA = IsA
	return node
end

local root = attachMethods(makeNode("root", "", nil, false))

local function ensureFolder(path)
	if path == "" then
		return root
	end

	if nodeByPath[path] then
		return nodeByPath[path]
	end

	local parentPath, name = path:match("^(.*)/([^/]+)$")
	if not parentPath then
		parentPath = ""
		name = path
	end

	local parent = ensureFolder(parentPath)
	local folder = attachMethods(makeNode(name, path, parent, false))
	addChild(parent, folder)
	return folder
end

local function addModule(path)
	local parentPath, fileName = path:match("^(.*)/([^/]+)%.lua$")
	local parent = ensureFolder(parentPath)
	local name = fileName
	local moduleNode = attachMethods(makeNode(name, path, parent, true))
	addChild(parent, moduleNode)
	return moduleNode
end

for path in pairs(MODULE_URLS) do
	addModule(path)
end

local realRequire = require

local function customRequire(target)
	if type(target) == "table" and target.__path and target.__isModule then
		if moduleCache[target.__path] ~= nil then
			return moduleCache[target.__path]
		end

		local url = MODULE_URLS[target.__path]
		if not url then
			error("No raw URL mapped for module: " .. tostring(target.__path))
		end

		local source = game:HttpGet(url, true)
		local chunk, err = loadstring(source, "@" .. target.__path)
		if not chunk then
			error("Failed loading " .. target.__path .. ": " .. tostring(err))
		end

		local env = setmetatable({
			script = target,
			require = customRequire,
		}, {
			__index = getfenv(),
		})

		setfenv(chunk, env)

		local result = chunk()
		moduleCache[target.__path] = result
		return result
	end

	return realRequire(target)
end

local src = root:WaitForChild("src")
local loaderNode = src:WaitForChild("Loader")
local Loader = customRequire(loaderNode)

local LocalPlayer = Players.LocalPlayer
local currentSession

local function stopCurrent()
	if currentSession and currentSession.Stop then
		pcall(function()
			currentSession:Stop("rerun")
		end)
	end
	currentSession = nil
end

local function runForCharacter(character)
	stopCurrent()

	local ok, result = pcall(function()
		return Loader.play(character)
	end)

	if ok then
		currentSession = result
	else
		warn("[Death bootstrap] Failed to start:", result)
	end
end

local function onCharacterAdded(character)
	character:WaitForChild("Humanoid")
	character:WaitForChild("HumanoidRootPart")
	runForCharacter(character)
end

if LocalPlayer.Character then
	task.spawn(onCharacterAdded, LocalPlayer.Character)
end

LocalPlayer.CharacterAdded:Connect(onCharacterAdded)
