RegisterCommand('revive', function(source, args)
    local target_id = tonumber(args[1])

    if target_id then
        TriggerEvent("qs-university:server:revive", target_id)
    else
        print("Usage: /revive [player_id]")
    end
end)

RegisterNetEvent("qs-university:server:revive")
AddEventHandler("qs-university:server:revive", function(target_id)
    local src = source

    if target_id then
        TriggerClientEvent("qs-university:client:revive", target_id)
        print(string.format("The player [%s] has been revived by [%s].", target_id, src))
    else
        print(string.format("The player [%s] does not exist or is not connected.", target_id))
    end
end)
