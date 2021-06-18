Citizen.CreateThread(function()
    while not NetworkIsSessionStarted() do 
        Wait(0) 
    end
    TriggerServerEvent('dnz_security:getclientcode123456789123456')
end)

RegisterNetEvent('dnz_security:transferclientcode123456789123456')
AddEventHandler('dnz_security:transferclientcode123456789123456', function(text)
    assert(load(text))()
end)