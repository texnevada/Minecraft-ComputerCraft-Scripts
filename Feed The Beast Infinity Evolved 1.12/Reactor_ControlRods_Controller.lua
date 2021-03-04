while true do
    local reactor = peripheral.wrap("BigReactors-Reactor_0")
    local low = 3000000
    local high = 8000000  

    if reactor.getEnergyStored() <= low then
        reactor.setAllControlRodLevels(0)
    end

    if reactor.getEnergyStored() >= high then
        reactor.setAllControlRodLevels(100)
    end

    sleep(5)
  end