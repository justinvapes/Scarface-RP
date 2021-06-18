local Keys = {
    ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
    ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
    ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
    ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
    ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
    ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
    ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
    ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
    ["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}


ESX = nil
local PlayerData = {}

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

local enableField = false

function AddCar(plate,model)
    SendNUIMessage({
        action = 'add',
        plate = plate,
		model = model
    }) 
end

function toggleField(enable)
    SetNuiFocus(enable, enable)
    enableField = enable

    if enable then
        SendNUIMessage({
            action = 'open'
        }) 
    else
        SendNUIMessage({
            action = 'close'
        }) 
    end
end

AddEventHandler('onResourceStart', function(name)
    if GetCurrentResourceName() ~= name then
        return
    end

    toggleField(false)
end)

RegisterNUICallback('escape', function(data, cb)
    toggleField(false)
    SetNuiFocus(false, false)

    cb('ok')
end)


local garagenType
RegisterNUICallback('enable-parkout', function(data, cb)
    if garagenType == "aircraft" then
		ESX.TriggerServerCallback('ps_garage:loadVehicles2', function(ownedCars)
			for _,v in pairs(ownedCars) do
				local hashVehicule = v.model
				local aheadVehName = GetDisplayNameFromVehicleModel(hashVehicule)
				local vehicleName  = GetLabelText(aheadVehName)
				local plate        = v.plate
				AddCar(plate,vehicleName)
			end
		end)
    cb('ok')
	elseif garagenType == "boot" then
		ESX.TriggerServerCallback('ps_garage:loadVehicles3', function(ownedCars)
			for _,v in pairs(ownedCars) do
				local hashVehicule = v.model
				local aheadVehName = GetDisplayNameFromVehicleModel(hashVehicule)
				local vehicleName  = GetLabelText(aheadVehName)
				local plate        = v.plate
				AddCar(plate,vehicleName)
			end
		end)
	cb('ok')
	elseif garagenType == "carimpound" then
		ESX.TriggerServerCallback('ps_garage:loadVehicles4', function(ownedCars)
			for _,v in pairs(ownedCars) do
				local hashVehicule = v.model
				local aheadVehName = GetDisplayNameFromVehicleModel(hashVehicule)
				local vehicleName  = GetLabelText(aheadVehName)
				local plate        = v.plate
				AddCar(plate,vehicleName)
			end
		end)
	cb('ok')
	elseif garagenType == "aircraftimpound" then
		ESX.TriggerServerCallback('ps_garage:loadVehicles5', function(ownedCars)
			for _,v in pairs(ownedCars) do
				local hashVehicule = v.model
				local aheadVehName = GetDisplayNameFromVehicleModel(hashVehicule)
				local vehicleName  = GetLabelText(aheadVehName)
				local plate        = v.plate
				AddCar(plate,vehicleName)
			end
		end)
	cb('ok')
	elseif garagenType == "car" then
		ESX.TriggerServerCallback('ps_garage:loadVehicles', function(ownedCars)
			for _,v in pairs(ownedCars) do
				local hashVehicule = v.model
				local aheadVehName = GetDisplayNameFromVehicleModel(hashVehicule)
				local vehicleName  = GetLabelText(aheadVehName)
				local plate        = v.plate
				AddCar(plate,vehicleName)
			end
		end)
    
    cb('ok')
	end
end) 

RegisterNUICallback('enable-parking', function(data, cb)
    
    local vehicles = ESX.Game.GetVehiclesInArea(GetEntityCoords(GetPlayerPed(-1)), 25.0)

    for key, value in pairs(vehicles) do
		local vehicleProps = ESX.Game.GetVehicleProperties(value)
        ESX.TriggerServerCallback('ps_garage:isOwned', function(owned)

            if owned then
				local hashVehicule = vehicleProps.model
				local aheadVehName = GetDisplayNameFromVehicleModel(hashVehicule)
				local vehicleName  = GetLabelText(aheadVehName)
                AddCar(GetVehicleNumberPlateText(value),vehicleName)
            end
    
        end, vehicleProps)
    end
    
    cb('ok')
end) 

local usedGarage

RegisterNUICallback('park-out', function(data, cb)
    
    ESX.TriggerServerCallback('ps_garage:loadVehicle', function(vehicle)
        local x = usedGarage.Zones.Spawnpunkt.x
		local y = usedGarage.Zones.Spawnpunkt.y
		local z = usedGarage.Zones.Spawnpunkt.z
		
        local props = json.decode(vehicle[1].vehicle)
		local spawn = vector3(usedGarage.Zones.Spawnpunkt.x,usedGarage.Zones.Spawnpunkt.y,usedGarage.Zones.Spawnpunkt.z)


		if ESX.Game.IsSpawnPointClear(spawn, 2) then
			ESX.Game.SpawnVehicle(props.model, {
				x = x,
				y = y,
				z = z + 1
			}, usedGarage.Zones.Spawnpunkt.h, function(callback_vehicle)
				ESX.Game.SetVehicleProperties(callback_vehicle, props)
				SetVehRadioStation(callback_vehicle, "OFF")
				TaskWarpPedIntoVehicle(GetPlayerPed(-1), callback_vehicle, -1)
				local carplate = GetVehicleNumberPlateText(callback_vehicle)
					ESX.TriggerServerCallback('esx_advancedgarage:getpearl', function(pearlescentColor)
						ESX.TriggerServerCallback('esx_advancedgarage:getwheel', function(wheelColor)
							SetVehicleExtraColours(callback_vehicle,tonumber(pearlescentColor),tonumber(wheelColor))
						end,carplate)
					end,carplate)
			end)
			TriggerServerEvent('ps_garage:changeState', data.plate, 0)
		else
			TriggerEvent('scarface_notify', '#26753b', 'Information', 'Alle Ausparkpunkte sind belegt!')
		end
    end, data.plate)
    
    cb('ok')
end)

function setVehData(veh,data)
    if not DoesEntityExist(veh) or not data then return nil end
	exports["vstancer"]:SetFrontTrackWidth(veh, data.frontWidth);
    exports["vstancer"]:SetFrontCamber(veh, data.frontChamber);
	
	exports["vstancer"]:SetRearTrackWidth(veh, data.rearWidth);
	exports["vstancer"]:SetRearCamber(veh, data.rearChamber);
end

RegisterNUICallback('park-in', function(data, cb)
    
    local vehicles = ESX.Game.GetVehiclesInArea(GetEntityCoords(GetPlayerPed(-1)), 25.0)

    for key, value in pairs(vehicles) do
        if GetVehicleNumberPlateText(value) == data.plate then
            TriggerServerEvent('ps_garage:saveProps', data.plate, ESX.Game.GetVehicleProperties(value))
            TriggerServerEvent('ps_garage:changeState', data.plate, 1)
			local vehicleProps = ESX.Game.GetVehicleProperties(value)
			local plate        = vehicleProps.plate
			local pearl		   = vehicleProps.pearlescentColor
			local wheelcolor		   = vehicleProps.wheelColor
			TriggerServerEvent('esx_advancedgarage:pearlspeichern',plate,pearl,wheelcolor)
			DeleteEntity(value)
          --  ESX.Game.DeleteVehicle(value)
        end
    end

    cb('ok')
end)

local NPCs = {}
Citizen.CreateThread(function()
	while true do
		local sleep = 500
		local coords = GetEntityCoords(GetPlayerPed(-1))
		for k,v in pairs(Config.Garages) do
			for i,j in pairs(v.Zones) do
				if(GetDistanceBetweenCoords(coords, j.x, j.y, j.z, true) < 50) then
					sleep = 4
					if i == 'NPC' then
						if NPCs[k] == nil then
							RequestModel(j.NPCHash)
							while not HasModelLoaded(j.NPCHash) do
								Citizen.Wait(100)
							end
							NPCs[k] = CreatePed(1, j.NPCHash, j.x, j.y, j.z, j.h, false, true)
							SetBlockingOfNonTemporaryEvents(NPCs[k], true)
							SetPedDiesWhenInjured(NPCs[k], false)
							SetPedCanPlayAmbientAnims(NPCs[k], true)
							SetPedCanRagdollFromPlayerImpact(NPCs[k], false)
							SetEntityInvincible(NPCs[k], true)
							FreezeEntityPosition(NPCs[k], true)
							TaskStartScenarioInPlace(NPCs[k], "WORLD_HUMAN_SMOKING", 0, true);
						end
					end
				end
			end
		end
	Citizen.Wait(sleep)
	end
end)

Citizen.CreateThread(function()
    while true do
        Wait(0)

		for k,v in pairs(Config.Garages) do
			for i,j in pairs(v.Zones) do
				if i == 'NPC' then
					if(GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), j.x, j.y, j.z, true) < 2) then
						ESX.ShowHelpNotification("Betätige ~INPUT_CONTEXT~ um die Garage zu öffnen")
						if IsControlJustReleased(0, 38) then
							toggleField(true)
							usedGarage = v
							garagenType = v.Type
							print(usedGarage)
						end
					end
				end
            end
        end
    end
end)

Citizen.CreateThread(function()

	for k,v in pairs(Config.Garages) do
		if v.Blip == true then
			if v.Type == "car" then
				for i,j in pairs(v.Zones) do
					if i == 'NPC' then
						local blip = AddBlipForCoord(j.x,j.y,j.z)

						SetBlipSprite(blip, 290)
						SetBlipScale(blip, 0.7)
						SetBlipColour(blip, 38)
						SetBlipDisplay(blip, 2)
						SetBlipAsShortRange(blip, true)

						BeginTextCommandSetBlipName("STRING")
						AddTextComponentString("Garage")
						EndTextCommandSetBlipName(blip)
					end
				end
			elseif v.Type == "aircraft" then
				for i,j in pairs(v.Zones) do
					if i == 'NPC' then
						local blip = AddBlipForCoord(j.x,j.y,j.z)

						SetBlipSprite(blip, 43)
						SetBlipScale(blip, 0.7)
						SetBlipColour(blip, 38)
						SetBlipDisplay(blip, 2)
						SetBlipAsShortRange(blip, true)

						BeginTextCommandSetBlipName("STRING")
						AddTextComponentString("Flug Garage")
						EndTextCommandSetBlipName(blip)
					end
				end
			elseif v.Type == "boot" then
				for i,j in pairs(v.Zones) do
					if i == 'NPC' then
						local blip = AddBlipForCoord(j.x,j.y,j.z)

						SetBlipSprite(blip, 410)
						SetBlipScale(blip, 0.7)
						SetBlipColour(blip, 38)
						SetBlipDisplay(blip, 2)
						SetBlipAsShortRange(blip, true)

						BeginTextCommandSetBlipName("STRING")
						AddTextComponentString("Boot Garage")
						EndTextCommandSetBlipName(blip)
					end
				end
			elseif v.Type == "carimpound" then
				for i,j in pairs(v.Zones) do
					if i == 'NPC' then
						local blip = AddBlipForCoord(j.x,j.y,j.z)

						SetBlipSprite(blip, 67)
						SetBlipScale(blip, 0.7)
						SetBlipColour(blip, 64)
						SetBlipDisplay(blip, 2)
						SetBlipAsShortRange(blip, true)

						BeginTextCommandSetBlipName("STRING")
						AddTextComponentString("Abschlepphof")
						EndTextCommandSetBlipName(blip)
					end
				end				
			elseif v.Type == "aircraftimpound" then
				for i,j in pairs(v.Zones) do
					if i == 'NPC' then
						local blip = AddBlipForCoord(j.x,j.y,j.z)

						SetBlipSprite(blip, 43)
						SetBlipScale(blip, 0.7)
						SetBlipColour(blip, 64)
						SetBlipDisplay(blip, 2)
						SetBlipAsShortRange(blip, true)

						BeginTextCommandSetBlipName("STRING")
						AddTextComponentString("Aircraft Abschlepphof")
						EndTextCommandSetBlipName(blip)
					end
				end				
			end
		end
	end
end)