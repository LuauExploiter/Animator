local Cleanup = {}

function Cleanup.stopSession(session, fadeTime)
	if not session then
		return
	end

	if session.Animator then
		pcall(function()
			session.Animator:Stop(0.05)
		end)
	end

	if session.Sounds then
		session.Sounds:stopAll(fadeTime or 0.08)
	end

	if session.Context then
		session.Context:cleanup()
	end

	if session.Animator then
		pcall(function()
			session.Animator:Destroy()
		end)
	end
end

return Cleanup
