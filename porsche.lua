local Car = require(script.Parent)

local Porsche = setmetatable({}, { __index = Car })
Porsche.__index = Porsche

function Porsche.new(numberOfDoors, colour, engineType)
	local self = Car.new("Porsche", numberOfDoors or 2, colour or "Silver", engineType or "Flat-6")
	setmetatable(self, Porsche)
	return self
end

function Porsche:ActivateSportChrono()
	print("Sport Chrono activated! The Porsche " .. self.Model .. " is now in sport mode with optimized performance!")
end

return Porsche
