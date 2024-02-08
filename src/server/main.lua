AddEventHandler('playerDropped', function ()
    local src = source
    print('Player(src).state.inCombat', Player(src).state.inCombat)

    if Player(src).state.inCombat then 
        exports.ox_inventory:ClearInventory(src)
        Player(src).state:set("inCombat", false, true)
    end
  end)