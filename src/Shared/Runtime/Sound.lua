local RunService = game:GetService("RunService")

local Http = require(script.Parent.Http)

local SoundRuntime = {}
SoundRuntime.__index = SoundRuntime

local attemptedDownloads = {}

function SoundRuntime.new()
	local self = setmetatable({}, SoundRuntime)
	self.Sounds = {}
	return self
end

function SoundRuntime:resolveSoundId(config)
	if config.LocalRuntimePath and isfile and isfile(config.LocalRuntimePath) then
		local localAsset = Http.getCustomAsset(config.LocalRuntimePath)
		if localAsset then
			return localAsset
		end
	end

	if config.DownloadUrl and config.LocalRuntimePath and not attemptedDownloads[config.LocalRuntimePath] then
		attemptedDownloads[config.LocalRuntimePath] = true

		task.spawn(function()
			local ok, err = pcall(function()
				local folder = config.LocalRuntimePath:match("^(.*)/[^/]+$")
				if folder and folder ~= "" then
					Http.ensureFolder(folder)
				end
				if not (isfile and isfile(config.LocalRuntimePath)) then
					Http.download(config.DownloadUrl, config.LocalRuntimePath)
				end
			end)

			if not ok then
				warn("[Death] Audio download failed:", err)
			end
		end)
	end

	return config.SoundId
end

function SoundRuntime:create(parent, config)
	local sound = Instance.new("Sound")
	sound.Name = config.Name or "EmoteSFX"
	sound.SoundId = self:resolveSoundId(config) or ""
	sound.Volume = config.Volume or 1
	sound.Looped = config.Looped or false
	sound.PlaybackSpeed = config.Pitch or config.PlaybackSpeed or 1
	sound.RollOffMaxDistance = config.RollOffMaxDistance or 85
	sound.RollOffMinDistance = config.RollOffMinDistance or 10
	sound.EmitterSize = config.EmitterSize or 10
	sound.Parent = parent
	table.insert(self.Sounds, sound)
	return sound
end

function SoundRuntime:playMain(parent, config)
	local sound = self:create(parent, config)
	sound.TimePosition = config.StartTime or 0
	sound:Play()
	return sound
end

function SoundRuntime:fadeAndDestroy(sound, duration)
	if not sound or not sound.Parent then
		return
	end

	duration = duration or 0.08
	local startVolume = sound.Volume
	local started = tick()

	while sound.Parent do
		local elapsed = tick() - started
		if elapsed >= duration then
			break
		end
		local alpha = elapsed / duration
		sound.Volume = startVolume * (1 - alpha)
		RunService.Heartbeat:Wait()
	end

	pcall(function()
		sound.Volume = 0
		sound:Stop()
		sound:Destroy()
	end)
end

function SoundRuntime:stopAll(fadeTime)
	for _, sound in ipairs(self.Sounds) do
		task.spawn(function()
			self:fadeAndDestroy(sound, fadeTime)
		end)
	end
	table.clear(self.Sounds)
end

return SoundRuntime
