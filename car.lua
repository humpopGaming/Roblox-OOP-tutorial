local Car = {}
Car.__index = Car

-- Constructor to create a new Car object
function Car.new(make, model, numberOfDoors, colour, engineType)
	local self = setmetatable({}, Car)

	self.Make = make
	self.Model = model
	self.NumberOfDoors = numberOfDoors or 4
	self.Colour = colour or "Unknown"
	self.EngineType = engineType or "Unknown"

	return self
end

-- Methods

-- Drive method to simulate driving
function Car:Drive()
	print("The "..self.Make.." is now driving!")
end

-- Brake method to simulate braking
function Car:Brake()
	print("The "..self.Make.." is now braking!")
end

-- Turn method to simulate turning
function Car:Turn(direction)
	if direction == "left" then
		print("The car is turning left.")
	elseif direction == "right" then
		print("The car is turning right.")
	else
		print("The car is moving straight.")
	end
end

return Car
