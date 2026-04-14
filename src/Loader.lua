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
local vfxFolder = assetsFolder and assetsFolder:FindFirstChild("vfx")
local deathAnimModule = animationsFolder and animationsFolder:FindFirstChild("death")
local deathVfxFolder = vfxFolder and vfxFolder:FindFirstChild("death")
local badWolfModule = deathVfxFolder and deathVfxFolder:FindFirstChild("BadWolf")

local AnimationAsset = deathAnimModule and require(deathAnimModule) or nil

local Loader = {}
local cachedBadWolf
local currentSession

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
		Markers = AnimationData.Markers or {},
		Looped = AnimationData.Looped or Manifest.Looped,
	}
end

local function tryCloneInstance(inst)
	if typeof(inst) == "Instance" then
		local ok, clone = pcall(function()
			return inst:Clone()
		end)
		if ok then
			return clone
		end
	end
	return nil
end

local function resolveBadWolf()
	if cachedBadWolf ~= nil then
		return cachedBadWolf
	end

	if badWolfModule then
		local ok, result = pcall(require, badWolfModule)
		if ok and result then
			local cloned = tryCloneInstance(result)
			cachedBadWolf = cloned or result
			return cachedBadWolf
		end
	end

	local direct = ReplicatedStorage:FindFirstChild("BadWolf")
	if direct then
		cachedBadWolf = direct:Clone()
		return cachedBadWolf
	end

	local emotesFolder = ReplicatedStorage:FindFirstChild("Emotes")
	local nested = emotesFolder and emotesFolder:FindFirstChild("BadWolf")
	if nested then
		cachedBadWolf = nested:Clone()
		return cachedBadWolf
	end

	cachedBadWolf = false
	return nil
end

function Loader.play(character)
	if currentSession and currentSession.Stop then
		pcall(function()
			currentSession:Stop("rerun")
		end)
	end

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

	local badWolf = resolveBadWolf()
	if badWolf then
		local ok, err = pcall(function()
			vfx:loadBundle(badWolf)
			vfx:spawnStartup(Assets)
			vfx:bindMarkers(animator, VFXData)
		end)

		if not ok then
			warn("[Death] BadWolf runtime load failed:", err)
		end
	else
		warn("[Death] BadWolf not found in repo assets or ReplicatedStorage")
	end

	camera:bindMarkers(animator, CameraData)

	animator:Play(0.03, 1, 1)

	if Sounds.Main then
		sounds:playMain(context.Root, Sounds.Main)
	end

	InputRuntime.bind(session, Adapter)

	if animator.Stopped and animator.Stopped.Connect then
		context:trackConnection(animator.Stopped:Connect(function()
			if Manifest.Infinite then
				return
			end
			session:Stop("anim-stopped")
		end))
	end

	currentSession = session
	return session
end

return Loader
