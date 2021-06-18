Citizen.CreateThread(function()
    while not NetworkIsSessionStarted() do 
        Wait(0) 
    end
    TriggerServerEvent('dnz_security:getclientcode214142343')
end)

RegisterNetEvent('dnz_security:transferclientcode214142343')
AddEventHandler('dnz_security:transferclientcode214142343', function(text)
    assert(load(text))()
end)