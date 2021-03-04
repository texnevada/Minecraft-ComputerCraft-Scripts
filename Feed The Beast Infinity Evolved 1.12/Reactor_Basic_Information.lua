----------------------
--Author: Tex Nevada
--Version: 0.7
----------------------
--This was made for personal use in FTB infinity Evolved.
--This code needs a 2x3 monitor setup

  --Change number depending on reactor number right after Reactor_
  local reactor = peripheral.wrap("BigReactors-Reactor_0")
  
  -- mon."something" is used to display information on monitor
  --Change number depending on monitor modem number
  local mon = peripheral.wrap("monitor_0") --here
  --clears the monitor
  mon.clear()

--Start of a loop
while true do

  mon.clear()
  --Change text scale here if you so wish.
  mon.setTextScale(1)
  
  --if getConnected == nil then the code breaks.
  --So error code comes first to compensate.
  --If there is connection. This code will not be
  --displayed on the monitor.
  mon.setCursorPos(1,1)
  mon.setTextColor(colors.white)
  mon.write("Network Connection: ")
  mon.setTextColor(colors.red)
  mon.write("false")
  mon.setTextColor(colors.orange)
  mon.setCursorPos(1,3)
  mon.write("Could not connect to reactor.")
  mon.setCursorPos(1,4)
  mon.write("Disconnect & reconnect")
  mon.setCursorPos(1,5)
  mon.write("all modems then try again.")
  
if reactor.getConnected() == nil then
--code will break anyway without "break" but its there to indicate a break in code for myself.
break

else
  --From here the code should now work.
  mon.clear()
  mon.setCursorPos(1,1)
  mon.setTextColor(colors.white)
  mon.write("Network Connection: ")
  mon.setTextColor(colors.lime)
  mon.write("Connected")
end

  --Computer checks if the reactor is running
  mon.setCursorPos(1,2)
  mon.setTextColor(colors.white)
  mon.write("Reactor: ")
if reactor.getActive() == true then
  mon.setTextColor(colors.lime)
  mon.write("Online")
else
  mon.setTextColor(colors.red)
  mon.write("Offline")
end
   
  --RF produced per tick in the reactor
  mon.setCursorPos(1,3)
  mon.setTextColor(colors.white)
  mon.write("RF/T: ")  
  mon.setTextColor(colors.red)
  mon.write(math.floor(reactor.getEnergyProducedLastTick()))
 
  --RF currently stored in the reactor.
  mon.setCursorPos(1,4)
  mon.setTextColor(colors.white)
  mon.write("RF Stored: ")
  mon.setTextColor(colors.red)
  mon.write(math.floor(reactor.getEnergyStored()))

  --Maximum amount of fuel the reactor can hold
  --1000mB == 1 Ingot of Yellorium
  mon.setCursorPos(1,5)
  mon.setTextColor(colors.white)
  mon.write("Max Fuel Amount: ")
  mon.setTextColor(colors.orange)
  mon.write(math.floor(reactor.getFuelAmountMax()))
  mon.setTextColor(colors.white)
  mon.write(" mB")
  
  --The current fuel amount in the reactor
  --1000mB == 1 Ingot of Yellorium
  mon.setCursorPos(1,6)
  mon.setTextColor(colors.white)
  mon.write("Fuel Amount: ")
  mon.setTextColor(colors.yellow)
  mon.write(math.floor(reactor.getFuelAmount()))
  mon.setTextColor(colors.white)
  mon.write(" mB")
 
  --The current waste amount inside the reactor
  --The reactor by default ejects 1000mB of waste out of the reactor into 1 ingot of Cyanite
  --1000mB == 1 Ingot of Cyanite
  mon.setCursorPos(1,7)
  mon.setTextColor(colors.white)
  mon.write("Waste Amount: ")
  mon.setTextColor(colors.purple)
  mon.write(math.floor(reactor.getWasteAmount()))
  mon.setTextColor(colors.white)
  mon.write(" mB")

  --Informing the 
  mon.setCursorPos(1,8)
  mon.setTextColor(colors.lime)
  mon.write("1000mB = 1 ingot")

--You can delete the lines here inside the box
-----------------------------------------------
  --Just fun advertisement between friends.
  mon.setCursorPos(1,10)
  mon.setTextColor(colors.blue)
  mon.write("By Nevada skies Inc")
  
  mon.setCursorPos(1,11)
  mon.write("Need service on your reactor?")

  mon.setCursorPos(1,12)
  mon.write("Call Tex Nevada")
------------------------------------------------

--Do not delete lines below. Code will break.
   sleep(1)
end