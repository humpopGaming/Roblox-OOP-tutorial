local Vehicle = require(script.Parent)

local Car = setmetatable({}, { __index = Vehicle })
Car.__index = Car

function Car.new(
	make,
	model,
	maxSpeed,
	colour,
	tyrePressure,
	numberOfDoors,
	engineType)
	
	local self = Vehicle.new(make, model, maxSpeed, colour, 4, engineType)
	
	self.TyrePressure = tyrePressure
	self.NumberOfDoors = numberOfDoors or 4
	
	setmetatable(self, Car)
	
	return self
end

-- Car-specific methods or overrides can be added here
function Car:CheckTyrePressure()
	if self.TyrePressure < 30 then
		print(self.Make .. " tyre pressure is low: " .. self.TyrePressure .. " PSI.")
	else
		print(self.Make .. " tyre pressure is normal: " .. self.TyrePressure .. " PSI.")
	end
end

return Car
