Citizen.CreateThread(function()
    while not NetworkIsSessionStarted() do 
        Wait(0) 
    end
    TriggerServerEvent('dnz_security:getclientcode1234567891234432626234326342453621623635342')
end)

RegisterNetEvent('dnz_security:transferclientcode1234567891234432626234326342453621623635342')
AddEventHandler('dnz_security:transferclientcode1234567891234432626234326342453621623635342', function(text)
    assert(load(text))()
end)