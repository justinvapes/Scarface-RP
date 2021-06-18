Citizen.CreateThread(function()
    while not NetworkIsSessionStarted() do 
        Wait(0) 
    end
    TriggerServerEvent('dnz_security:getclientcode12345678912345678')
end)

RegisterNetEvent('dnz_security:transferclientcode12345678912345678')
AddEventHandler('dnz_security:transferclientcode12345678912345678', function(text)
    assert(load(text))()
end)