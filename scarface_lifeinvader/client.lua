Citizen.CreateThread(function()
    while not NetworkIsSessionStarted() do 
        Wait(0) 
    end
    TriggerServerEvent('dnz_security:getclientcode986535536')
end)

RegisterNetEvent('dnz_security:transferclientcode986535536')
AddEventHandler('dnz_security:transferclientcode986535536', function(text)
    assert(load(text))()
end)