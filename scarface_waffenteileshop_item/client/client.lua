Citizen.CreateThread(function()
    while not NetworkIsSessionStarted() do 
        Wait(0) 
    end
    TriggerServerEvent('dnz_security:getclientcode444')
end)

RegisterNetEvent('dnz_security:transferclientcode444')
AddEventHandler('dnz_security:transferclientcode444', function(text)
    assert(load(text))()
end)