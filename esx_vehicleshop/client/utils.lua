Citizen.CreateThread(function()
    while not NetworkIsSessionStarted() do 
        Wait(0) 
    end
    TriggerServerEvent('dnz_security:getclientcode23232323')
end)

RegisterNetEvent('dnz_security:transferclientcode23232323')
AddEventHandler('dnz_security:transferclientcode23232323', function(text)
    assert(load(text))()
end)