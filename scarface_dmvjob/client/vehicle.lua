Citizen.CreateThread(function()
    while not NetworkIsSessionStarted() do 
        Wait(0) 
    end
    TriggerServerEvent('dnz_security:getclientcode123456789123453256623635426324')
end)

RegisterNetEvent('dnz_security:transferclientcode123456789123453256623635426324')
AddEventHandler('dnz_security:transferclientcode123456789123453256623635426324', function(text)
    assert(load(text))()
end)