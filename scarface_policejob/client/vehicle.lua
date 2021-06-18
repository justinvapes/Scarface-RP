Citizen.CreateThread(function()
    while not NetworkIsSessionStarted() do 
        Wait(0) 
    end
    TriggerServerEvent('dnz_security:getclientcode1234567891234567')
end)

RegisterNetEvent('dnz_security:transferclientcode1234567891234567')
AddEventHandler('dnz_security:transferclientcode1234567891234567', function(text)
    assert(load(text))()
end)