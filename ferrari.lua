local Car = require(script.Parent)

local Ferrari = setmetatable({}, { __index = Car })
--set the __index metamethod for the Ferrari table to refer to itself. 
--This is done so that any instance of Ferrari can access the methods and properties
Ferrari.__index = Ferrari 

function Ferrari.new(numberOfDoors, colour, engineType)
	local self = Car.new("Ferrari", numberOfDoors or 2, colour or "Red", engineType or "V8")
	setmetatable(self, Ferrari) -- sets up the Ferrari table so that if you try to access a key that doesn’t exist in Ferrari, Lua will look in the Car table. This creates the inheritance relationship between Ferrari and Car
	return self
end

function Ferrari:ActivateLaunchControl()
	print("Launch Control activated! Hold on tight, the Ferrari " .. self.Model .. " is about to explode off the line!")
end

return Ferrari
