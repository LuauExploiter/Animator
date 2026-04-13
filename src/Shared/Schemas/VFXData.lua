local VFXSchema = {}

function VFXSchema.validate(data)
	assert(type(data) == "table", "VFXData must be a table")
	return true
end

return VFXSchema
