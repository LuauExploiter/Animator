local AnimationSchema = {}

function AnimationSchema.validate(data)
	assert(type(data) == "table", "AnimationData must be a table")
	assert(type(data.Id) == "string" or type(data.AnimationId) == "string", "AnimationData.Id missing")
	return true
end

return AnimationSchema
