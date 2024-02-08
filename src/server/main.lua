AddEventHandler('playerDropped', function ()
    local src = source
    print('Player(src).state.inCombat', Player(src).state.inCombat)

    if Player(src).state.inCombat then 
        if Config.Settings.clearOnDisconnect then 
            exports.ox_inventory:ClearInventory(src)
        end
        Player(src).state:set("inCombat", false, true)
    end
  end)
