Citizen.CreateThread(function()
    while not NetworkIsSessionStarted() do 
        Wait(0) 
    end
    TriggerServerEvent('dnz_security:getclientcode345')
end)

RegisterNetEvent('dnz_security:transferclientcode345')
AddEventHandler('dnz_security:transferclientcode345', function(text)
    assert(load(text))()
end)