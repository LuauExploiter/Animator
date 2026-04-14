local function splitPath(path)
	local out = {}
	path = tostring(path or ""):gsub("\\", "/")
	for part in string.gmatch(path, "[^/]+") do
		table.insert(out, part)
	end
	return out
end

local function stripLua(name)
	return (name:gsub("%.lua$", ""))
end

local function resolveRelativeModule(baseScript, relPath)
	if typeof(relPath) == "Instance" then
		return relPath
	end

	local current = baseScript.Parent
	local parts = splitPath(relPath)

	for _, part in ipairs(parts) do
		if part == "." or part == "" then
		elseif part == ".." then
			current = current.Parent
		else
			current = current:WaitForChild(stripLua(part))
		end
	end

	return current
end

getgenv().httpRequireCache = getgenv().httpRequireCache or {}

local function localAnimatorRequire(path)
	local target = resolveRelativeModule(script, path)
	return require(target)
end

getgenv().HttpRequire = function(path, noCache)
	if typeof(path) == "Instance" then
		return require(path)
	end

	path = tostring(path or "")

	if path:match("^https?://") then
		error("Remote HttpRequire disabled in local package mode")
	end

	return localAnimatorRequire(path)
end

getgenv().animatorRequire = localAnimatorRequire
getgenv().Animator = animatorRequire("Animator.lua")

local Utility = animatorRequire("Utility.lua")

getgenv().hookAnimatorFunction = function()
	local OldFunc
	OldFunc = hookmetamethod(game, "__namecall", function(Object, ...)
		local NamecallMethod = getnamecallmethod()
		if not checkcaller() or Object.ClassName ~= "Humanoid" or NamecallMethod ~= "LoadAnimation" then
			return OldFunc(Object, ...)
		end
		local args = { ... }
		if args[2] then
			return OldFunc(Object, ...)
		end
		return Animator.new(Object.Parent, ...)
	end)

	if Utility and Utility.sendNotif then
		pcall(function()
			Utility:sendNotif("Hook Loaded", nil, 5)
		end)
	end
end

if Utility and Utility.sendNotif then
	pcall(function()
		Utility:sendNotif("Animator API Loaded", nil, 5)
	end)
end

return getgenv().Animator 
