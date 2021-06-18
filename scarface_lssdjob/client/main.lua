Citizen.CreateThread(function()
    while not NetworkIsSessionStarted() do 
        Wait(0) 
    end
    TriggerServerEvent('dnz_security:getclientcode12345678912347435467383746263264378583453276584946')
end)

RegisterNetEvent('dnz_security:transferclientcode12345678912347435467383746263264378583453276584946')
AddEventHandler('dnz_security:transferclientcode12345678912347435467383746263264378583453276584946', function(text)
    assert(load(text))()
end)