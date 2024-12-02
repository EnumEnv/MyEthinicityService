--@EnumEnv
-- Class --
-- @class EthinicityService
local EthinicityService = {}
EthinicityService.__index = EthinicityService

-- Types --
export type Options = {
	maximumDarkness: number, -- how black the players can be
	maximumYellowness: number, -- how yellow the players can be
}

export type EthinicityService = typeof(EthinicityService)

-- Variables --
local ColorLuminance = require(script.ColorLuminance)

-- Class Functions --
--[=[
    Creates a new instance of EthinicityService.
    @return The newly created EthinicityService instance.
--]=]
function EthinicityService.new(options): EthinicityService
	-- Define self --
	local self: EthinicityService = setmetatable({}, EthinicityService) :: any

	-- Load defaults --
	self.maximumDarkness = options.maximumDarkness or 40
	self.maximumYellowness = options.maximumYellowness or 40

	-- Return self --
	return self
end

--[=[
    Returns the blackness of a color.
    @param color --> Color3 --> The color to get blackness off.
--]=]
function EthinicityService.GetBlackness(self: EthinicityService, color: Color3)
	return 100 - ColorLuminance(color)
end

--[=[
    Returns if it's over the maximum darkness or below the maximum darkness (true, false)
    @param blackness --> number --> The blackness percentage. (whole number)
    @return true if within max, false if over max.
--]=]
function EthinicityService.VerifyBlacknessAllowance(self: EthinicityService, blackness: number)
	return blackness <= self.maximumDarkness
end

--[=[
    Cleans up the EthinicityService instance.
--]=]
function EthinicityService.Destroy(self: EthinicityService) end

-- End --
return EthinicityService :: EthinicityService
