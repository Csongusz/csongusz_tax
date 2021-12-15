ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent(Config.SharedObject, function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)


local jatekos = GetPlayerPed(-1)
local ado = true 

function waiting()
    Wait(Config.Time * 60000) -- idő
end 

Citizen.CreateThread(function() -- adó fizetés
    while true do 
        if ado == true then 
            waiting()
            TriggerServerEvent("nc_tax:penzlevonas")
        end
    end
end)