local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Shared = script.Parent:WaitForChild("Shared")
local EmotesFolder = script.Parent:WaitForChild("Emotes")
local DeathFolder = EmotesFolder:WaitForChild("Death")

local AnimatorSource = Shared:WaitForChild("Animator"):WaitForChild("Source")
local AnimatorModule = AnimatorSource:FindFirstChild("Animator") or AnimatorSource:FindFirstChild("Main")
local Animator = require(AnimatorModule)

local Runtime = Shared:WaitForChild("Runtime")
local CharacterRuntime = require(Runtime:WaitForChild("Character"))
local SoundRuntime = require(Runtime:WaitForChild("Sound"))
local VFXRuntime = require(Runtime:WaitForChild("VFX"))
local CameraRuntime = require(Runtime:WaitForChild("Camera"))
local Cleanup = require(Runtime:WaitForChild("Cleanup"))
local InputRuntime = require(Runtime:WaitForChild("Input"))
local GuiRuntime = require(Runtime:WaitForChild("Gui"))

local Manifest = require(DeathFolder:WaitForChild("Manifest"))
local AnimationData = require(DeathFolder:WaitForChild("AnimationData"))
local Sounds = require(DeathFolder:WaitForChild("Sounds"))
local VFXData = require(DeathFolder:WaitForChild("VFX"))
local CameraData = require(DeathFolder:WaitForChild("Camera"))
local Assets = require(DeathFolder:WaitForChild("Assets"))

local Adapter = require(script.Parent:WaitForChild("GameAdapters"):WaitForChild("Universal"))

local Root = script.Parent.Parent
local assetsFolder = Root:FindFirstChild("assets")
local animationsFolder = assetsFolder and assetsFolder:FindFirstChild("animations")
local deathAnimationModule = animationsFolder and animationsFolder:FindFirstChild("death")
local AnimationAsset = deathAnimationModule and require(deathAnimationModule) or nil

local Loader = {}

local persistentGui = GuiRuntime.new()

local cachedBadWolf
local cachedBadWolfAttempted = false

local cachedHotbar
local cachedHotbarAttempted = false

local cachedBar
local cachedBarAttempted = false

local cachedEmotes
local cachedEmotesAttempted = false

local function resolveBadWolfModule()
	local assets = Root:FindFirstChild("assets")
	local vfxFolder = assets and assets:FindFirstChild("vfx")
	local deathFolder = vfxFolder and vfxFolder:FindFirstChild("death")
	return deathFolder and deathFolder:FindFirstChild("BadWolf")
end

local function resolveGuiModule(name)
	local assets = Root:FindFirstChild("assets")
	local guiFolder = assets and assets:FindFirstChild("gui")
	return guiFolder and guiFolder:FindFirstChild(name)
end

local function requireDetachedBadWolf(moduleScript)
	if not moduleScript then
		return nil
	end

	local emotesFolder = ReplicatedStorage:FindFirstChild("Emotes")
	local createdCompat = false

	if not emotesFolder then
		emotesFolder = Instance.new("Folder")
		emotesFolder.Name = "Emotes"
		emotesFolder.Parent = ReplicatedStorage
		createdCompat = true
	end

	local ok, result = pcall(require, moduleScript)
	local detached = nil

	if ok then
		if typeof(result) == "Instance" then
			detached = result:Clone()
		else
			detached = result
		end
	else
		warn("[Death] BadWolf preload failed:", result)
	end

	if createdCompat and emotesFolder and emotesFolder.Parent then
		pcall(function()
			emotesFolder:Destroy()
		end)
	end

	return detached
end

local function requireAssetModule(moduleScript, label)
	if not moduleScript then
		return nil
	end

	local ok, result = pcall(require, moduleScript)
	if ok then
		return result
	end

	warn("[Death] " .. tostring(label) .. " preload failed:", result)
	return nil
end

local function preloadAssets()
	if not cachedBadWolfAttempted then
		cachedBadWolfAttempted = true
		cachedBadWolf = requireDetachedBadWolf(resolveBadWolfModule())
	end

	if not cachedHotbarAttempted then
		cachedHotbarAttempted = true
		cachedHotbar = requireAssetModule(resolveGuiModule("Hotbar"), "Hotbar")
	end

	if not cachedBarAttempted then
		cachedBarAttempted = true
		cachedBar = requireAssetModule(resolveGuiModule("Bar"), "Bar")
	end

	if not cachedEmotesAttempted then
		cachedEmotesAttempted = true
		cachedEmotes = requireAssetModule(resolveGuiModule("Emotes"), "Emotes")
	end
end

local function buildAnimationResolvable()
	local merged = {}

	if type(AnimationData) == "table" then
		for k, v in pairs(AnimationData) do
			merged[k] = v
		end
	end

	if type(AnimationAsset) == "table" then
		for k, v in pairs(AnimationAsset) do
			merged[k] = v
		end
	end

	if next(merged) then
		return merged
	end

	return {
		Id = AnimationData.Id or AnimationData.AnimationId,
		Markers = AnimationData.Markers,
		Looped = AnimationData.Looped or Manifest.Looped,
	}
end

local function triggerDeath()
	if getgenv and getgenv().DeathStart then
		getgenv().DeathStart()
		return
	end

	local localPlayer = Players.LocalPlayer
	if localPlayer and localPlayer.Character then
		pcall(function()
			Loader.play(localPlayer.Character)
		end)
	end
end

local function ensureUI()
	preloadAssets()

	persistentGui:addHotbar(cachedHotbar, triggerDeath)
	persistentGui:addBar(cachedBar)
	local emotesGui = persistentGui:addEmotes(cachedEmotes, triggerDeath)
	persistentGui:addTopIcon(emotesGui)
end

function Loader.play(character)
	ensureUI()

	local context = CharacterRuntime.new(character)
	local sounds = SoundRuntime.new()
	local vfx = VFXRuntime.new(context)
	local camera = CameraRuntime.new(context)

	local session = {
		Playing = true,
		Context = context,
		Manifest = Manifest,
		Sounds = sounds,
		VFX = vfx,
		Camera = camera,
		Animator = nil,
	}

	function session:Stop(reason)
		if not self.Playing then
			return
		end

		self.Playing = false

		if context._restoreMobileButtons then
			context._restoreMobileButtons()
		end

		Cleanup.stopSession(self, Sounds.Main and Sounds.Main.FadeOutTime or 0.08)
	end

	context:setupForManifest(Manifest)
	context:lockWalkSpeed(Manifest.WalkSpeed or 5.333333492279053)

	local animationResolvable = buildAnimationResolvable()
	local animator = Animator.new(character, animationResolvable)
	animator.Looped = animationResolvable.Looped or animationResolvable.Loop or Manifest.Looped
	session.Animator = animator

	if cachedBadWolf then
		local ok, err = pcall(function()
			vfx:loadBundle(cachedBadWolf)
			vfx:spawnStartup(Assets)
			vfx:bindMarkers(animator, VFXData)
		end)

		if not ok then
			warn("[Death] BadWolf runtime load failed:", err)
		end
	end

	camera:bindMarkers(animator, CameraData)

	animator:Play(0.03, 1, 1)

	if Sounds.Main then
		sounds:playMain(context.Root, Sounds.Main)
	end

	InputRuntime.bind(session, Adapter)

	context:trackConnection(animator.Stopped.Event:Connect(function()
		if Manifest.Infinite then
			return
		end
		session:Stop("anim-stopped")
	end))

	return session
end

return Loader
