ESX          = nil
local blip = nil
local radiusBlip = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('scarface_notifyannounce_server:on')
AddEventHandler('scarface_notifyannounce_server:on', function(title)
    SendNUIMessage({
        type = "server",
        title = title
    })
	
	PlaySoundFrontend(-1, "Exit_Capture_Zone", "DLC_Apartments_Drop_Zone_Sounds", 1)
end)
