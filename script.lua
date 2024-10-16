local F8 = require(script.Parent.Vehicle.Car.Ferrari.F8)
local Porsche911 = require(script.Parent.Vehicle.Car.Porsche.Porsche911)

local f8 = F8.new()
local porsche911 = Porsche911.new()

f8:Start()
f8:Accelerate(120)
f8:Stop()

porsche911:Start()
porsche911:Accelerate(160)
porsche911:Stop()

print(f8.Speed)
print(porsche911.Speed)
print(porsche911:CheckTyrePressure())
