--Ferrari is a table that will act as a class or blueprint for creating Ferrari objects.
local Ferrari = {} 
--sets up the metatable mechanism, which allows us to use OOP style syntax in Lua. 
--If you want more detail on this I have added a video in the description.
Ferrari.__index = Ferrari 

--is a constructor function. 
--This is a common pattern to create new instances of an object.
function Ferrari.new() 
	local self = setmetatable({}, Ferrari) --sets up the metatable for our Ferrari

	self.Model = "F8"
	self.NumberOfDoors = numberOfDoors or 4
	self.Colour = colour or "Unknown"
	self.EngineType = engineType or "Unknown"
	
	--we return the instance of the new object so the caller can use it, 
	return self 
end

function Ferrari:Drive()
	print("The "..self.Model.." is now driving!")
end

-- Brake method to simulate braking
function Ferrari:Brake()
	print("The "..self.Model.." is now braking!")
end

function Ferrari:Turn(direction)
	print("The "..self.Model.." is turning "..direction)
end

--the script returns the Ferrari table, 
--making it accessible to other scripts that require or import this module.
return Ferrari 
