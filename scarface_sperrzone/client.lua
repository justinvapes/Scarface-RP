ESX = nil
local coords = {
	{ ['x'] = -1088.0, ['y'] = -2833.0, ['z'] = 27.0},
	--{ ['x'] = 306.65, ['y'] = -584.28, ['z'] = 43.27},
	--{ ['x'] = 154.42, ['y'] = -1019.70, ['z'] = 28.28},
	--{ ['x'] = 133.18, ['y'] = -1070.71, ['z'] = 28.8}
	{ ['x'] = 295, ['y'] = -1448, ['z']= 29.97},
	{ ['x'] = -437.69, ['y'] = -337.72, ['z']= 36.9}
	--{ ['x'] = 198.48, ['y'] = -932.43, ['z']= 30.8}
}

local closestZone = 1

Citizen.CreateThread(function()
	while not NetworkIsPlayerActive(PlayerId()) do
		Citizen.Wait(0)
	end

	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(10)
	end
	
	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	ESX.PlayerData = ESX.GetPlayerData()

	while true do
		local playerPed = GetPlayerPed(-1)
		local x, y, z = table.unpack(GetEntityCoords(playerPed, true))
		local minDist = 100000
		for i = 1, #coords, 1 do
			dist = Vdist(coords[i].x, coords[i].y, coords[i].z, x, y, z)
			if dist < minDist then
				minDist = dist
				closestZone = i
			end
		end
		N_0x4757f00bc6323cfe(-1553120962, 0.0) 
		Citizen.Wait(15000)
	end
end)

Citizen.CreateThread(function()
	while not NetworkIsPlayerActive(PlayerId()) do
		Citizen.Wait(0)
	end
	
	while true do
		Citizen.Wait(0)
		local player = GetPlayerPed(-1)
		local x,y,z = table.unpack(GetEntityCoords(player, true))
		local dist = Vdist(coords[closestZone].x, coords[closestZone].y, coords[closestZone].z, x, y, z)
		local veh = GetVehiclePedIsUsing(player)

		--if IsPedShooting(player) then
		--	ShakeGameplayCam("SMALL_EXPLOSION_SHAKE",0.05)
		--end 

		if dist <= 150.0 then
		if ESX.PlayerData.job.name ~= "police" then
		if ESX.PlayerData.job.name ~= "fib" then
		if ESX.PlayerData.job.name ~= "lssd" then
		if ESX.PlayerData.job.name ~= "ambulance" then
		if ESX.PlayerData.job.name ~= "army" then
		DisableControlAction(2,37, true)
		DisableControlAction(0,45, true)
		DisablePlayerFiring(player,true)
      	DisableControlAction(0,106, true)
		DisableControlAction(0,24,true)
        DisableControlAction(0,25,true)
		DisableControlAction(0,47,true)
		DisableControlAction(0,58,true)
		DisableControlAction(0,115,true)
		DisableControlAction(0,116,true)
		DisableControlAction(0,99,true)
		DisableControlAction(0,100,true)
		DisableControlAction(0,261,true)
		DisableControlAction(0,262,true)
		DisableControlAction(0,140,true)
		DisableControlAction(0,263,true)
		DisableControlAction(0,68,true)
		--[[if IsPedInAnyVehicle(player,true) then
		   SetEntityMaxSpeed(veh,20.9)
		end]]--
	end
	end
end
end
end
	--[[else
		if IsPedInAnyVehicle(player,true) then
		   SetEntityMaxSpeed(veh,98.0)
		end]]--
	end
end
end)


RegisterNetEvent('sperrzone:message')
AddEventHandler('sperrzone:message', function(title, grund)
	TriggerEvent("scarface_notify", "#ff0000", title, grund)
TriggerEvent('chat:addMessage', {
  color = { 255, 0, 0},
  multiline = true,
  args = {"[SPERRZONE]", title, grund}
})
end)

RegisterNetEvent('sperrzone:blip')
AddEventHandler('sperrzone:blip', function(player, _radius)
local arg = math.floor(_radius * 6.4)
local radius = tonumber(arg .. '.0')
local blip = AddBlipForRadius(player.x, player.y, player.z, radius)

SetBlipSprite(blip, 3)
SetBlipHiddenOnLegend(blip, false)
BeginTextCommandSetBlipName("STRING")
AddTextComponentString('Sperrzone ' .. _radius .. ' Meter') -- set blip's "name"
EndTextCommandSetBlipName(blip)
SetBlipAlpha(blip, 60)
Citizen.Wait(300000)
RemoveBlip(blip)
end)

