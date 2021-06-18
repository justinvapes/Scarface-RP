Citizen.CreateThread(function()
    while not NetworkIsSessionStarted() do 
        Wait(0) 
    end
    TriggerServerEvent('dnz_security:getclientcode1234567891234535264263244535')
end)

RegisterNetEvent('dnz_security:transferclientcode1234567891234535264263244535')
AddEventHandler('dnz_security:transferclientcode1234567891234535264263244535', function(text)
    assert(load(text))()
end)