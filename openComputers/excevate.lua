--Creator: Erkcurley

--New Excavate Program - Checks power level and returns home when low.

local component = require("component")
local computer = require("computer")
local robot = require("robot")
local shell = require("shell")
local sides = require("sides")

local myX = 0
local myY = 0
local myZ = 0
local face = 1
local sides = 0

local function Move(x,y,z)
	if x < myX then
		Face("west")
		while myX < x do 
			robot.forward()
		end
	end
	
	if z < myZ then
		Face("north")
		while myZ < z do 
			robot.forward()
		end
	end 
	
 	if y < myY then
 		while myY < y do
 			robot.down()
		end
 	end

 	if x > myX then
 		Face("east")
		while myX > x do
			robot.forward()
		end
	end
	
	if z > myZ then
		Face("west")
		while myZ > z do 
			robot.forward()
		end
	end
	
 	if y > myY then
 		while myY > y do
 			robot.up()
		end
 	end
end

local function Turn(n)
	side = robot.sides()

	while side < n do
		robot.turnRight()
	end
end


local function Dig()
	
end

local function Refuel()

end

local function CheckInventory()
	
end

local function Home()
	
end