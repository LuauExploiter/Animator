local RunService = game:GetService("RunService")

local Animator = {}
Animator.__index = Animator

local function safeDisconnect(conn)
	if typeof(conn) == "RBXScriptConnection" and conn.Connected then
		conn:Disconnect()
	end
end

local function normalizeAnimationId(value)
	if type(value) == "number" then
		return "rbxassetid://" .. tostring(value)
	end
	if type(value) == "string" then
		if value:match("^rbxassetid://") then
			return value
		end
		local digits = value:match("(%d+)")
		if digits then
			return "rbxassetid://" .. digits
		end
	end
	return nil
end

local function resolveAnimationInstance(resolvable)
	if typeof(resolvable) == "Instance" and resolvable:IsA("Animation") then
		return resolvable
	end

	local animation = Instance.new("Animation")

	if type(resolvable) == "table" then
		local id = resolvable.Id or resolvable.AnimationId
		local normalized = normalizeAnimationId(id)
		if not normalized then
			error("Animator.Main: table resolvable must contain Id or AnimationId")
		end
		animation.AnimationId = normalized
	else
		local normalized = normalizeAnimationId(resolvable)
		if not normalized then
			error("Animator.Main: unsupported animation resolvable")
		end
		animation.AnimationId = normalized
	end

	return animation
end

local function getHumanoid(character)
	local humanoid = character:FindFirstChildOfClass("Humanoid")
	if not humanoid then
		error("Animator.Main: character has no Humanoid")
	end
	return humanoid
end

local function getAnimatorObject(humanoid)
	local animator = humanoid:FindFirstChildOfClass("Animator")
	if not animator then
		animator = Instance.new("Animator")
		animator.Parent = humanoid
	end
	return animator
end

function Animator.new(character, resolvable)
	local self = setmetatable({}, Animator)

	self.Character = character
	self.Humanoid = getHumanoid(character)
	self.AnimatorObject = getAnimatorObject(self.Humanoid)
	self.AnimationResolvable = resolvable
	self.Animation = resolveAnimationInstance(resolvable)

	self.handleVanillaAnimator = false
	self.Looped = type(resolvable) == "table" and (resolvable.Looped or resolvable.Loop) or false
	self.IsPlaying = false
	self.Speed = 1
	self.Length = 0

	self._track = nil
	self._connections = {}
	self._markerSignals = {}
	self._knownMarkers = {}

	if type(resolvable) == "table" then
		local markers = resolvable.Markers or {}
		for _, name in ipairs(markers) do
			self._knownMarkers[name] = true
		end
	end

	self.Stopped = Instance.new("BindableEvent")
	self.DidLooped = Instance.new("BindableEvent")
	self.KeyframeReached = Instance.new("BindableEvent")

	return self
end

function Animator:_disconnectAll()
	for _, conn in ipairs(self._connections) do
		safeDisconnect(conn)
	end
	table.clear(self._connections)
end

function Animator:_attachTrackSignals(track)
	self:_disconnectAll()

	table.insert(self._connections, track.Stopped:Connect(function()
		self.IsPlaying = false
		self.Stopped:Fire()
	end))

	table.insert(self._connections, track.DidLoop:Connect(function()
		self.DidLooped:Fire()
	end))

	table.insert(self._connections, track.KeyframeReached:Connect(function(name)
		self.KeyframeReached:Fire(name)
	end))

	for markerName, bindable in pairs(self._markerSignals) do
		table.insert(self._connections, track:GetMarkerReachedSignal(markerName):Connect(function(param)
			bindable:Fire(param)
		end))
	end

	for markerName in pairs(self._knownMarkers) do
		if not self._markerSignals[markerName] then
			self._markerSignals[markerName] = Instance.new("BindableEvent")
		end
		local bindable = self._markerSignals[markerName]
		table.insert(self._connections, track:GetMarkerReachedSignal(markerName):Connect(function(param)
			bindable:Fire(param)
		end))
	end
end

function Animator:Play(fadeTime, weight, speed)
	fadeTime = fadeTime or 0.1
	speed = speed or self.Speed or 1
	weight = weight or 1

	if self._track then
		pcall(function()
			self._track:Stop(0)
			self._track:Destroy()
		end)
		self._track = nil
	end

	local track = self.AnimatorObject:LoadAnimation(self.Animation)
	track.Looped = self.Looped
	self._track = track
	self.Length = track.Length
	self.Speed = speed

	self:_attachTrackSignals(track)
	track:Play(fadeTime, weight, speed)
	self.IsPlaying = true

	return track
end

function Animator:Stop(fadeTime)
	fadeTime = fadeTime or 0.1
	if self._track then
		pcall(function()
			self._track:Stop(fadeTime)
		end)
	end
end

function Animator:Destroy()
	self:Stop(0)
	self:_disconnectAll()

	if self._track then
		pcall(function()
			self._track:Destroy()
		end)
		self._track = nil
	end

	for _, bindable in pairs(self._markerSignals) do
		pcall(function()
			bindable:Destroy()
		end)
	end
	table.clear(self._markerSignals)

	pcall(function()
		self.Stopped:Destroy()
	end)
	pcall(function()
		self.DidLooped:Destroy()
	end)
	pcall(function()
		self.KeyframeReached:Destroy()
	end)
end

function Animator:GetMarkerReachedSignal(name)
	self._knownMarkers[name] = true
	if not self._markerSignals[name] then
		self._markerSignals[name] = Instance.new("BindableEvent")

		if self._track then
			local bindable = self._markerSignals[name]
			table.insert(self._connections, self._track:GetMarkerReachedSignal(name):Connect(function(param)
				bindable:Fire(param)
			end))
		end
	end
	return self._markerSignals[name].Event
end

function Animator:GetTimeOfKeyframe(name)
	if not self._track then
		return nil
	end
	local ok, result = pcall(function()
		return self._track:GetTimeOfKeyframe(name)
	end)
	return ok and result or nil
end

function Animator:AdjustSpeed(speed)
	self.Speed = speed
	if self._track then
		pcall(function()
			self._track:AdjustSpeed(speed)
		end)
	end
end

function Animator:IgnoreMotorIn()
end

function Animator:IgnoreBoneIn()
end

function Animator:IgnoreMotor()
end

function Animator:IgnoreBone()
end

return Animator
