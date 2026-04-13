local RunService = game:GetService("RunService")

local CameraRuntime = {}
CameraRuntime.__index = CameraRuntime

function CameraRuntime.new(context)
	local self = setmetatable({}, CameraRuntime)
	self.Context = context
	return self
end

function CameraRuntime:shake(magnitude, duration)
	local cam = workspace.CurrentCamera
	if not cam then
		return
	end

	local start = tick()
	local lastOffset = CFrame.new()

	local conn
	conn = RunService.RenderStepped:Connect(function()
		if not cam.Parent then
			if conn then
				conn:Disconnect()
			end
			return
		end

		local elapsed = tick() - start
		if elapsed >= duration then
			if conn then
				conn:Disconnect()
			end
			pcall(function()
				cam.CFrame = cam.CFrame * lastOffset:Inverse()
			end)
			return
		end

		pcall(function()
			cam.CFrame = cam.CFrame * lastOffset:Inverse()
			lastOffset = CFrame.new(
				(math.random() - 0.5) * 2 * magnitude * 0.08,
				(math.random() - 0.5) * 2 * magnitude * 0.08,
				(math.random() - 0.5) * 2 * magnitude * 0.04
			)
			cam.CFrame = cam.CFrame * lastOffset
		end)
	end)

	self.Context:trackConnection(conn)
end

function CameraRuntime:bindMarkers(animator, config)
	for _, event in ipairs(config.Events or {}) do
		if event.Type == "Marker" and event.Action == "Shake" then
			self.Context:trackConnection(animator:GetMarkerReachedSignal(event.Name):Connect(function()
				self:shake(event.Magnitude or 1, event.Duration or 0.25)
			end))
		end
	end
end

return CameraRuntime
