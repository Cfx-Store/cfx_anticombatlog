LocalPlayer.state:set("inCombat", false, true)
local combatTimer = 0

Citizen.CreateThread(function ()
    while true do
        local ped = PlayerPedId()

        if IsPedShooting(ped) then 
            combatTimer = Config.Settings.timer
            LocalPlayer.state:set("inCombat", true, true)
        end
        Wait(1)
    end
end)

Citizen.CreateThread(function ()
    while true do
        local inCombat = LocalPlayer.state.inCombat

        if inCombat and combatTimer > 0 then 
            combatTimer = combatTimer - 1
        end

        if inCombat and combatTimer == 0 then 
            print('faLSE STATE BAGG')
            LocalPlayer.state:set("inCombat", false, true)
        end
        Wait(1000)
    end
end)