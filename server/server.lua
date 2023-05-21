local QBCore = exports['qb-core']:GetCoreObject()
local ropes = {}



QBCore.Functions.CreateUseableItem(Config.RopeItem, function(source, item)
    local src = source
    local player = QBCore.Functions.GetPlayer(src)
    if player then
        TriggerClientEvent('bach-rope:menu', src)
    end
end)


RegisterServerEvent("bach-towing:tow")
AddEventHandler("bach-towing:tow", function(veh1, veh2)
    local allPlayers = GetPlayers()
    for k, player in pairs(allPlayers) do
        TriggerClientEvent('bach-towing:makeRope', player, veh1, veh2, source)
    end
    table.insert(ropes, {veh1, veh2, source})
end)


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(Config.ropeSyncDuration * 1000)
        refreshRopes()
    end
end)

function refreshRopes()
    local allPlayers = GetPlayers()
    if #ropes > 0 then
        for k, rope in pairs(ropes) do
            for i, player in pairs(allPlayers) do
                TriggerClientEvent('bach-towing:makeRope', player, rope[1], rope[2], rope[3], rope[3] == player)
            end
        end
    end
end

RegisterServerEvent("bach-towing:stopTow")
AddEventHandler("bach-towing:stopTow", function()
    local allPlayers = GetPlayers()

    for k, rope in pairs(ropes) do
        if rope[3] == source then
            for i, player in pairs(allPlayers) do
                TriggerClientEvent('bach-towing:removeRope', player, source, rope[1], rope[2])
                ropes[k] = nil
            end
        end
    end
end)
