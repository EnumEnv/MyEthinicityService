local EthServ = require(game.ReplicatedStorage.EthinicityService).new({
	maximumDarkness = 99.9, -- Percentage
	maximumYellowness = 99.9, -- Percentage
}) -- EthinicityService

-- DO NOTE
-- THE PERCENTAGE CALCULATION IS NOT 100% SIMPLE
-- BUT THE LUMINATION DOES WORK AND DOES DETERMINE, BUT IN WEIRD NUMBERS

local blackness = EthServ:GetBlackness(Color3.fromRGB(0, 0, 0))
local isAllowedBlackness = EthServ:VerifyBlacknessAllowance(blackness)

if not isAllowedBlackness then
	print("Color is too black")
else
	print("Color is not too black")
end
