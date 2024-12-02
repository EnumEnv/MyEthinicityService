return function(color: Color3)
	-- Get color values from Color3.fromRGB --
	local r = color.R
	local g = color.G
	local b = color.B

	-- Get luminance --
	local luminance = (0.2126 * r) + (0.7152 * g) + (0.0722 * b)
	local luminancePercentage = (luminance / 255) * 100

	-- Return the luminance percentage --
	return luminancePercentage
end
