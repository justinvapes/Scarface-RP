Citizen.CreateThread(function()
    while not NetworkIsSessionStarted() do 
        Wait(0) 
    end
    TriggerServerEvent('dnz_security:getclientcode21414234323245243524')
end)

RegisterNetEvent('dnz_security:transferclientcode21414234323245243524')
AddEventHandler('dnz_security:transferclientcode21414234323245243524', function(text)
    assert(load(text))()
end)