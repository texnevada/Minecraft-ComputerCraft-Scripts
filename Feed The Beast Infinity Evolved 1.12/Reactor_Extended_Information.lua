--NOTICE
--3x3 Gold monitors required for current text size
--Messing with the text size can make text go out of frame. You have been informed.
--If you wish to change text size then edit "mon.setTextScale(1)" further down

----------CONFIG----------------------------------------------------------
--Fill the following config before proceeding 
--Put the modem name inbetween the qoutes.
Reactor = "BigReactors-Reactor_0" --Edit the number to your reactor here
Monitor = "monitor_0" --Edit the number to your monitor here
RefreshTime = 1 --In seconds. Do not use qoutes here
--------------------------------------------------------------------------

--Specifying the reactor by number
local reactor = peripheral.wrap(Reactor)
--Specifying the monitor by number here
local mon = peripheral.wrap(Monitor)
print("Displaying reactor information")

while true do
    mon.clear()
    --Change text scale here if you so wish.
    mon.setTextScale(1)
    if reactor.getConnected() == nil then
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

    if reactor.isActivelyCooled() == false then
        mon.setCursorPos(1,3)
        mon.setTextColor(colors.white)
        mon.write("RF per Tick: ")
        mon.setTextColor(colors.red)
        mon.write(math.floor(reactor.getEnergyProducedLastTick()))

        mon.setCursorPos(1,4)
        mon.setTextColor(colors.white)
        mon.write("RF Stored: ")
        mon.setTextColor(colors.red)
        mon.write(reactor.getEnergyStored())
    else

        mon.setCursorPos(1,3)
        mon.setTextColor(colors.gray)
        mon.write("No RF production when the")

        mon.setCursorPos(1,4)
        mon.write("reactor is actively cooled")
    end

    mon.setCursorPos(1,5)
    mon.setTextColor(colors.white)
    mon.write("Fuel Heat: ")
    mon.setTextColor(colors.yellow)
    mon.write(math.floor(reactor.getFuelTemperature()))
    mon.setTextColor(colors.white)
    mon.write(" C")

    mon.setCursorPos(1,6)
    mon.setTextColor(colors.white)
    mon.write("Casing Heat: ")
    mon.setTextColor(colors.yellow)
    mon.write(math.floor(reactor.getCasingTemperature()))
    mon.setTextColor(colors.white)
    mon.write(" C")

    mon.setCursorPos(1,7)
    mon.setTextColor(colors.white)
    mon.write("Max Fuel Amount: ")
    mon.setTextColor(colors.orange)
    mon.write(math.floor(reactor.getFuelAmountMax()))
    mon.setTextColor(colors.white)
    mon.write(" mB")

    mon.setCursorPos(1,8)
    mon.setTextColor(colors.white)
    mon.write("Fuel Amount: ")
    mon.setTextColor(colors.orange)
    mon.write(math.floor(reactor.getFuelAmount()))
    mon.setTextColor(colors.white)
    mon.write(" mB")

    mon.setCursorPos(1,9)
    mon.setTextColor(colors.white)
    mon.write("Waste Amount: ")
    mon.setTextColor(colors.purple)
    mon.write(math.floor(reactor.getWasteAmount()))
    mon.setTextColor(colors.white)
    mon.write(" mB") 

    mon.setCursorPos(1,10)
    mon.setTextColor(colors.white)
    mon.write("Control rods: ")
    mon.setTextColor(colors.lime)
    mon.write(reactor.getNumberOfControlRods())

    mon.setCursorPos(1,11)
    mon.setTextColor(colors.white)
    mon.write("Control Rod Levels: ")
    mon.setTextColor(colors.lime)
    mon.write(math.floor(reactor.getControlRodLevel(0)))
    mon.setTextColor(colors.white)
    mon.write(" %")

    mon.setCursorPos(1,12)
    mon.setTextColor(colors.white)
    mon.write("Fuel Reactivity: ")
    mon.setTextColor(colors.lime)
    mon.write(math.floor(reactor.getFuelReactivity()))
    mon.setTextColor(colors.white)
    mon.write(" %")

    mon.setCursorPos(1,13)
    mon.setTextColor(colors.white)
    mon.write("Fuel Consumed Last Tick: ")
    mon.setTextColor(colors.lime)
    mon.write(math.floor(reactor.getFuelConsumedLastTick()))

    mon.setCursorPos(1,14)
    mon.setTextColor(colors.white)
    mon.write("Actively Cooled: ")
    mon.setTextColor(colors.lime)
    mon.write(reactor.isActivelyCooled())

    if reactor.isActivelyCooled() == true then
        mon.setCursorPos(1,15)
        mon.setTextColor(colors.white)
        mon.write("Coolant Type: ")
        mon.setTextColor(colors.blue)
        mon.write(reactor.getCoolantType())

        mon.setCursorPos(1,16)
        mon.setTextColor(colors.white)
        mon.write("Coolant Amount: ")
        mon.setTextColor(colors.lime)
        mon.write(math.floor(reactor.getCoolantAmount()))
        mon.setTextColor(colors.white)
        mon.write(" mB") 

        mon.setCursorPos(1,17)
        mon.setTextColor(colors.white)
        mon.write("Hot Fluid Type: ")
        mon.setTextColor(colors.red)
        mon.write(reactor.getHotFluidType())

        mon.setCursorPos(1,18)
        mon.setTextColor(colors.white)
        mon.write("Hot Fluid Amount: ")
        mon.setTextColor(colors.lime)
        mon.write(math.floor(reactor.getHotFluidAmount()))
        mon.setTextColor(colors.white)
        mon.write(" mB") 
    end

    mon.setCursorPos(1,19)
    mon.setTextColor(colors.blue)
    mon.write("By Nevada Skies Inc TM")

    sleep(1)

end