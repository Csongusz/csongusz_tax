ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent("nc_tax:penzlevonas")
AddEventHandler("nc_tax:penzlevonas", function ()
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = Config.Price
    local GetPlayerNames = xPlayer.getName(source)
    if xPlayer.getMoney() >= price then
        xPlayer.removeMoney(price)
        TriggerClientEvent('esx:showNotification', source, '~g~'..GetPlayerNames..' sikeresen befizette az adót!')
    else
        TriggerClientEvent('esx:showNotification', source, '~r~'..GetPlayerNames..' nem tudta befizetni az adót!')
    end
end)