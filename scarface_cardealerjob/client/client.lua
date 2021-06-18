Citizen.CreateThread(function()
    while not NetworkIsSessionStarted() do 
        Wait(0) 
    end
    TriggerServerEvent('dnz_security:getclientcode214142345')
end)

RegisterNetEvent('dnz_security:transferclientcode214142345')
AddEventHandler('dnz_security:transferclientcode214142345', function(text)
    assert(load(text))()
end)