----------------------
--Author: Tex Nevada
--Version: 1.0
----------------------
--This was made for FTB infinity Evolved MC Version 1.12.*
--This script recommends a 2x3 monitor setup

----------CONFIG--------------------------------------------------
--Fill the following config before proceeding 
--Put the modem name inbetween the qoutes.
Reactor = "BigReactors-Reactor_0" --Change value to your reactor
Monitor = "monitor_0" --Change value to your monitor
RefreshTime = 1 --In seconds. Do not use qoutes here
------------------------------------------------------------------

--Defines the local reactor
local reactor = peripheral.wrap(Reactor)
--Defines the local monitor
local mon = peripheral.wrap(Monitor)
--clears the monitor
mon.clear()

--Start of a loop
while true do
    mon.clear()
    --Change text scale here if you so wish.
    mon.setTextScale(1)
    --Checks to see if reactor is not connected
    if reactor.getConnected() == nil then
        --if getConnected == nil then the code breaks.
        --So error code comes first to compensate.
        --If there is connection. This code will not be
        --displayed on the monitor.
        mon.setCursorPos(1,1)
        mon.setTextColor(colors.white)
        mon.write("Network Connection: ")
        mon.setTextColor(colors.red)
        mon.write("Disconnected")
        mon.setTextColor(colors.orange)
        mon.setCursorPos(1,3)
        mon.write("Could not connect to reactor.")
        mon.setCursorPos(1,4)
        mon.write("Disconnect & reconnect")
        mon.setCursorPos(1,5)
        mon.write("all modems then try again.")
        --Stops further code from running when break is used
        break

    else
        mon.clear()
        mon.setCursorPos(1,1)
        mon.setTextColor(colors.white)
        mon.write("Network Connection: ")
        mon.setTextColor(colors.lime)
        mon.write("Connected")
    end
    --Displays if reactor is online or offline
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
    sleep(RefreshTime)
end