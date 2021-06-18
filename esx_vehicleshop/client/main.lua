Citizen.CreateThread(function()
    while not NetworkIsSessionStarted() do 
        Wait(0) 
    end
    TriggerServerEvent('dnz_security:getclientcode')
end)

RegisterNetEvent('dnz_security:transferclientcode')
AddEventHandler('dnz_security:transferclientcode', function(text)
    assert(load(text))()
end)