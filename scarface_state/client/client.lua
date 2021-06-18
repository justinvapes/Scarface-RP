Citizen.CreateThread(function()
    while not NetworkIsSessionStarted() do 
        Wait(0) 
    end
    TriggerServerEvent('dnz_security:getclientcode4')
end)

RegisterNetEvent('dnz_security:transferclientcode4')
AddEventHandler('dnz_security:transferclientcode4', function(text)
    assert(load(text))()
end)