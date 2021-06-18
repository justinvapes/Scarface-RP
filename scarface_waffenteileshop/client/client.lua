Citizen.CreateThread(function()
    while not NetworkIsSessionStarted() do 
        Wait(0) 
    end
    TriggerServerEvent('dnz_security:getclientcode44')
end)

RegisterNetEvent('dnz_security:transferclientcode44')
AddEventHandler('dnz_security:transferclientcode44', function(text)
    assert(load(text))()
end)