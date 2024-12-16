RegisterNetEvent("qs-university:client:revive")
AddEventHandler("qs-university:client:revive", function()
    local playerPed = PlayerPedId()

    if IsEntityDead(playerPed) then
        SetEntityHealth(playerPed, 200)
        ClearPedTasksImmediately(playerPed)

        print("You have been revived.")
    end
end)
