local Vehicle = {}
Vehicle.__index = Vehicle

function Vehicle.new(
	make,
	model,
	maxSpeed,
	colour, 
	numberOfWheels,
	engineType)
	
	local self = setmetatable({}, Vehicle)

	self.Make= make
	self.Model = model
	self.MaxSpeed = maxSpeed or 0
	self.Colour = colour or "Unknown"
	self.NumberOfWheels = numberOfWheels or 4
	self.EngineType = engineType or "Unknown"
	self.Speed = 0

	return self
end

function Vehicle:Start()
	self.Engine:Start()
end

function Vehicle:Stop()
	self.Engine:Stop()
end

function Vehicle:Accelerate(amount)
	self.Speed = math.min(self.MaxSpeed, self.Speed + amount)
end

function Vehicle:Brake(amount)
	self.Speed = math.max(0, self.Speed - amount)
end

return Vehicle
