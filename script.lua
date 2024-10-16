local ServerScriptService = game:GetService("ServerScriptService")
local Ferrari = require(ServerScriptService.OOP.Car.Ferrari)
local Porsche = require(ServerScriptService.OOP.Car.Porsche)

local ferrari = Ferrari.new()
local porsche = Porsche.new()

ferrari:Drive()
ferrari:Brake()

porsche:Drive()
porsche:Brake()

ferrari:ActivateLaunchControl()
porsche:ActivateSportChrono()
