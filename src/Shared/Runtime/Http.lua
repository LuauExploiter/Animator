local Http = {}

function Http.getRequestFunction()
	return request or http_request or (syn and syn.request) or (fluxus and fluxus.request)
end

function Http.ensureFolder(path)
	if isfolder and not isfolder(path) then
		makefolder(path)
	end
end

function Http.download(url, filePath)
	local req = Http.getRequestFunction()
	local body

	if req then
		local res = req({
			Url = url,
			Method = "GET",
		})

		if not res then
			error("Http.download: no response")
		end

		local status = res.StatusCode or res.status
		if status ~= 200 then
			error("Http.download: status " .. tostring(status))
		end

		body = res.Body or res.body
	else
		body = game:HttpGet(url, true)
	end

	if type(body) ~= "string" or body == "" then
		error("Http.download: empty body")
	end

	if not writefile then
		error("Http.download: writefile unavailable")
	end

	writefile(filePath, body)
	return filePath
end

function Http.getCustomAsset(path)
	local loader = getcustomasset or getsynasset or (syn and syn.asset)
	if not loader then
		return nil
	end
	return loader(path)
end

return Http
