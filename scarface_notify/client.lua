ESX                           = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	PlayerData = ESX.GetPlayerData()

end)

RegisterNetEvent('scarface_notify')
AddEventHandler('scarface_notify', function(color, title, message)
    SendNUIMessage({
        type = "custom",
        color = color,
		title = title,
        message = message,
    })
	PlaySoundFrontend(-1, "ATM_WINDOW", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)

end)

RegisterNetEvent('scarface_notify_server:on')
AddEventHandler('scarface_notify_server:on', function(message)
    SendNUIMessage({
        type = "server",
		color = "#ff0000",
        title = "Information",
        message = message
    })
	
	PlaySoundFrontend(-1, "ATM_WINDOW", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
end)

RegisterNetEvent('scarface_notify2')
AddEventHandler('scarface_notify2', function(msg, title)
	ESX.TriggerServerCallback('Craniax_Admin:GroupCheck', function(rechte)
		if rechte == "superadmin" or rechte == "admin" or rechte == "mod" or rechte == "guide" then
            TriggerEvent('scarface_notify', "#ff0000", "TEAMCHAT - " .. title, msg)
        end
    end)
end)

RegisterCommand("id", function(source, args, rawCommand)
    local playerPed = GetPlayerPed(-1)
	TriggerEvent("scarface_notify", "#ff0000", "Information", "Deine ID: " ..GetPlayerServerId(PlayerId()).. " ")
end)

RegisterCommand("ids", function(source, args, rawCommand)
	local playerPed = GetPlayerPed(-1)
	local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
	if closestPlayer ~= -1 and closestDistance <= 4.0 then
		TriggerEvent("scarface_notify", "#ff0000", 'Information', "Spieler ID in deiner Nähe: " .. GetPlayerServerId(closestPlayer) .. " ")
	else
		TriggerEvent("scarface_notify", "#ff0000", 'Information', "Keine Spieler in der Nähe")
	end
end)

RegisterCommand('tc', function(source, args)
    TriggerServerEvent('tc', table.concat(args, " " ))
end)