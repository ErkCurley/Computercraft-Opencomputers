--First Slot is Wood
--Last slot first row is Sapplings

Home = true
height = 0


function Prep()
  
  clearinv()
  plant()
  charcoal()
  fuel()

end

function fuel()

  if turtle.getFuelLevel() < 100 then
    turtle.select(16)
    turtle.turnRight()
    turtle.suck()
    turtle.turnLeft()
    turtle.refuel()
    turtle.select(1)
  end
end


function clearinv()

  turtle.select(1)
  wood = turtle.getItemCount(1)
  turtle.dropUp(wood - 1)
    
end

function plant()

  if turtle.getItemCount(4) < 32 then  
  turtle.select(4)
  turtle.turnLeft()
    amount = turtle.getItemCount(4)
  turtle.suck(64 - amount)
  turtle.turnRight()
  turtle.place()
  turtle.select(1)
  else
  turtle.select(4)
  turtle.place()
  turtle.select(1)
  end

end

function charcoal()

  if turtle.getItemCount(5) == 0 then
    
    turtle.select(5)
    turtle.suckUp()
    turtle.dropDown()
    turtle.select(1)
  
  else
    
    turtle.select(5)
    turtle.dropDown()
    turtle.select(1)
    
  end
    
end

function check()

  print("Checking")

  if turtle.compareUp() then

     digup()
     moveup()
  
  else
    
     Home = true
     gohome()  

  end
  
  if turtle.compare() then

    dig()    
  
  end

end


function gohome()

  while height > 0 do
  
   turtle.down()
   height = height - 1

  end
  
  turtle.turnRight()
  turtle.turnRight()
  turtle.forward()
  turtle.turnRight()
  turtle.turnRight()
  
end


function moveup()

  turtle.up()
  height = height + 1

end


function digup()

  turtle.digUp()
  print("Dug Up")

end

function dig()

  turtle.dig()
  print("I have Dug")
  
end


while true do
  

  if Home then  

    if turtle.compare() then
      
      Prep()
      dig()
      turtle.forward()
      print("I have begun")
      Home = false
    
      while not Home do

        check()
           
      
      end
      
      Prep()
      
    end  
  end

  print("Wait")  
  os.sleep(5)
  
end
