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

local gangData,Blips, CurrentShop = {}, {}, {}
local shopname = nil

ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	ESX.PlayerData = ESX.GetPlayerData()
	
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
end)

RegisterNetEvent('esx:setLevel')
AddEventHandler('esx:setLevel', function(level)
	ESX.PlayerData.level = level
end)

RegisterNetEvent('esx:setGang')
AddEventHandler('esx:setGang', function(gang)
	ESX.PlayerData.gang = gang
end)

RegisterNetEvent('esx:setGangrank')
AddEventHandler('esx:setGangrank', function(gangrank)
	ESX.PlayerData.gangrank = gangrank
end)

RegisterNetEvent('esx:setRP')
AddEventHandler('esx:setRP', function(rp)
	ESX.PlayerData.rp = rp
end)

RegisterNetEvent('esx:setGWD')
AddEventHandler('esx:setGWD', function(gwd)
	ESX.PlayerData.gwd = gwd
end)

-- only used when script is restarting mid-session
RegisterNetEvent('Craniax_Fraktion:syncServer')
AddEventHandler('Craniax_Fraktion:syncServer', function(fraks)
	gangData = fraks
end)

RegisterNetEvent("Craniax_Fraktion:CoordCheck")
AddEventHandler("Craniax_Fraktion:CoordCheck", function(dasda,x,y,z)
	local coords = GetEntityCoords(PlayerPedId())
	local distance = GetDistanceBetweenCoords(coords, x, y, z, true)
	
	if distance < 20 then
		TriggerServerEvent("Craniax_Fraktion:gehtklar",dasda)
	else
		TriggerServerEvent("Craniax_Fraktion:gehtnichtklar")
	end
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

RegisterNUICallback('enable-parkout', function(data, cb)
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
        local x = usedGarage.garagespawn.x
		local y = usedGarage.garagespawn.y
		local z = usedGarage.garagespawn.z
		
        local props = json.decode(vehicle[1].vehicle)

        ESX.Game.SpawnVehicle(props.model, {
            x = x,
            y = y,
            z = z + 1
        }, tonumber(usedGarage.heading2), function(callback_vehicle)
            ESX.Game.SetVehicleProperties(callback_vehicle, props)
            SetVehRadioStation(callback_vehicle, "OFF")
            TaskWarpPedIntoVehicle(GetPlayerPed(-1), callback_vehicle, -1)
        end)

    end, data.plate)

    TriggerServerEvent('ps_garage:changeState', data.plate, 0)
    
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
            ESX.Game.DeleteVehicle(value)
        end
    end

    cb('ok')
end)

Citizen.CreateThread(function()
    while true do
        Wait(0)

		for k,v in pairs(gangData) do
			if(GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), v.garagenpc.x, v.garagenpc.y, v.garagenpc.z, true) < 2) then
				ESX.ShowHelpNotification("Car garage ~INPUT_CONTEXT~ ")
				if IsControlJustReleased(0, 38) then
					toggleField(true)
					usedGarage = v
				end
			end
        end
    end
end)


function DrawSub(text, time)
	ClearPrints()
	BeginTextCommandPrint('STRING')
	AddTextComponentSubstringPlayerName(text)
	EndTextCommandPrint(time, 1)
end

function Frakmenu()
    local elements = {}

    local elements = {
		{label = "Fraktion erstellen",     value = "create"},
		{label = "Fraktion verwalten",     value = "list"},
		{label = "Fraktionsleader einstellen",     value = "inv"},
		--{label = "Frakauto",     value = "car"},
    }


    ESX.UI.Menu.CloseAll()

	ESX.UI.Menu.Open(
		'default', GetCurrentResourceName(), 'bizMenu',
		{
			title  = "Biz Menu",
			elements = elements
		},
		function(data, menu)
			if data.current.value == "create" then
				openGetterMenu('create')
			elseif data.current.value == "list" then
				openFrakliste()
			elseif data.current.value == "inv" then
				openGetterMenu('inv')
			elseif data.current.value == "car" then
				openCarGetterMenu('car')
			end
		end,
		function(data, menu)
			menu.close()
		end
	)
end

function openFrakliste()

	ESX.TriggerServerCallback('Craniax_Fraktion:getFraklist', function(fraks)

		local elements = {
			head = {"Fraktionsname", "Ränge", "Aktionen"},
			rows = {}
		}

		for i=1, #fraks, 1 do
			local ranks = fraks[i].ranks


			table.insert(elements.rows, {
				data = fraks[i],
				cols = {
					fraks[i].name,
					ranks,
					'{{' .."Löschen" .. '|fire}}'
				}
			})
		end

		ESX.UI.Menu.Open('list', GetCurrentResourceName(), 'employee_list_', elements, function(data, menu)
			local employee = data.data

			if data.value == 'fire' then
				menu.close()
				ESX.ShowNotification("Gelöscht")
				TriggerServerEvent("Craniax_Fraktion:DelFrak", employee.name)

			end
		end, function(data, menu)
			menu.close()
		end)

	end)

end

function openGetterMenu(type)
	ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'Erstellmenu',
	{
		title = "Geben sie den Fraktionsnamen ein",
	}, function(data, menu)
		local parameter = data.value
			if type == "create" then
				menu.close()
				Citizen.Wait(1500)
				openFrakWaffenkammer(parameter)
			elseif type == "inv" then
				menu.close()
				Citizen.Wait(1500)
				openInvRankMenu(parameter)
			end
		menu.close()
	end, function(data, menu)
		menu.close()
	end)
end


function openCarGetterMenu(type)
	ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'CarErstellmenu',
	{
		title = "Geben sie den Autonamen ein",
	}, function(data, menu)
		local parameter = data.value
			if type == "car" then
				menu.close()
				Citizen.Wait(1500)
				openidcarding(parameter)
			end
		menu.close()
	end, function(data, menu)
		menu.close()
	end)
end

function openidcarding(parameter)
	ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'IDCarErstellmenu',
	{
		title = "Geben sie die ID ein",
	}, function(data, menu)
		local id = data.value
		local playerPed = GetPlayerPed(-1)
		local coords    = GetEntityCoords(playerPed)
		local carExist  = false
		
		ESX.Game.SpawnVehicle(parameter, coords, 0.0, function(vehicle) --get vehicle info
			if DoesEntityExist(vehicle) then
				carExist = true
				SetEntityVisible(vehicle, false, false)
				SetEntityCollision(vehicle, false)
				
				local newPlate     = exports.esx_vehicleshop:GeneratePlate()
				local vehicleProps = ESX.Game.GetVehicleProperties(vehicle)
				vehicleProps.plate = newPlate
				TriggerServerEvent('ganglogs:autospawn', vehicleProps, id, parameter)
				ESX.Game.DeleteVehicle(vehicle)			
			end		
		end)
		
		Wait(1000)
		if not carExist then	
		end		
		menu.close()
	end, function(data, menu)
		menu.close()
	end)
end

function openFrakWaffenkammer(parameter)
    local elements = {}

    local elements = {
		{label = "Waffenkammer setzen",     value = "frak"},
    }
    ESX.UI.Menu.CloseAll()
	ESX.UI.Menu.Open(
		'default', GetCurrentResourceName(), 'Waffenkammerpunkt',
		{
			title  = "Waffenkammer Punkt",
			elements = elements
		},
		function(data, menu)
			if data.current.value == "frak" then
				menu.close()
				Citizen.Wait(100)
			    ped = GetPlayerPed(-1)
				local pos = GetEntityCoords(ped)
				pos1 = vector3(pos.x,pos.y,pos.z)
				openFrakGaragenNPC(parameter,pos1)
			end
		end,
		function(data, menu)
			menu.close()
		end
	)
end

function openFrakGaragenNPC(parameter,pos1)
    local elements = {}

    local elements = {
		{label = "Garagen NPC setzen",     value = "garagenpc"},
    }
    ESX.UI.Menu.CloseAll()
	ESX.UI.Menu.Open(
		'default', GetCurrentResourceName(), 'GaragenNPC',
		{
			title  = "Garagen Menu",
			elements = elements
		},
		function(data, menu)
			if data.current.value == "garagenpc" then
				menu.close()
				Citizen.Wait(100)
			    ped = GetPlayerPed(-1)
				local pos = GetEntityCoords(ped)
				pos2 = vector3(pos.x,pos.y,pos.z)
				local heading = GetEntityHeading(ped)
				openGaragenSpawn(parameter,pos1,heading,pos2)
			end
		end,
		function(data, menu)
			menu.close()
		end
	)
end

function openGaragenSpawn(parameter,pos1,heading,pos2)
    local elements = {}

    local elements = {
		{label = "Garagen Spawn setzen",     value = "garagespawn"},
    }
    ESX.UI.Menu.CloseAll()
	ESX.UI.Menu.Open(
		'default', GetCurrentResourceName(), 'GaragenSpawn',
		{
			title  = "Garagenspawn Menu",
			elements = elements
		},
		function(data, menu)
			if data.current.value == "garagespawn" then
				menu.close()
				Citizen.Wait(100)
			    ped = GetPlayerPed(-1)
				local pos = GetEntityCoords(ped)
				pos3 = vector3(pos.x,pos.y,pos.z)
				local heading2 = GetEntityHeading(ped)
				openRanksMenu(parameter,pos1,heading,pos2,pos3,heading2)
			end
		end,
		function(data, menu)
			menu.close()
		end
	)
end

function openInvRankMenu(parameter)
	ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'invranksmen',
	{
		title = "Geben sie den Rang ein",
	}, function(data, menu)
		local rank = data.value
		menu.close()
		Citizen.Wait(500)
		openInvIdMenu(parameter,rank)
	end, function(data, menu)
		menu.close()
	end)
end

function openInvIdMenu(parameter,rank)
	ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'invidmenu',
	{
		title = "Geben sie die ID ein",
	}, function(data, menu)
		local id = data.value
		menu.close()
		Citizen.Wait(500)
		TriggerServerEvent("Craniax_Fraktion:MakeLeader",parameter,rank,id)
		menu.close()
	end, function(data, menu)
		menu.close()
	end)
end

function openRanksMenu(parameter,pos1,heading,pos2,pos3,heading2)
	ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'Preismenu',
	{
		title = "Geben sie ein Wieviele Ränge die Fraktion haben soll",
	}, function(data, menu)
		local ranks = data.value
		menu.close()
		Citizen.Wait(500)
		TriggerServerEvent("Craniax_Fraktion:CreateFrak",parameter,pos1,heading,pos2,pos3,heading2,ranks)
		menu.close()
	end, function(data, menu)
		menu.close()
	end)
end

function openWaffenkammer(name)
    local elements = {}

    local elements = {
		{label = "Gegenstand Rausholen",     value = "get"},
		{label = "Gegenstand Einlagern",     value = "put"},
    }


    ESX.UI.Menu.CloseAll()

	ESX.UI.Menu.Open(
		'default', GetCurrentResourceName(), 'Waffenschrank',
		{
			title  = "Frak Waffenkammer",
			elements = elements
		},
		function(data, menu)
			if data.current.value == "get" then
				openGetMenu(name)
			elseif data.current.value == "put" then
				openPutMenu(name)
			end
		end,
		function(data, menu)
			menu.close()
		end
	)
end

function openGetMenu(name)
	ESX.TriggerServerCallback('Craniax_Fraktion:getInventoryV', function(inventory)
		local elements = {}
		for i=1, #inventory.items, 1 do
		  local item = inventory.items[i]
		  if item.count > 0 then
			table.insert(elements, {label = item.label .. ' x' .. item.count, type = 'item_standard', value = item.name})
		  end

		end

		for i=1, #inventory.weapons, 1 do
		  local weapon = inventory.weapons[i]
		  table.insert(elements, {label = ESX.GetWeaponLabel(weapon.name) .. ' [' .. weapon.ammo .. ']', type = 'item_weapon', value = weapon.name, ammo = weapon.ammo})
		end
		ESX.UI.Menu.CloseAll()

		ESX.UI.Menu.Open(
			'default', GetCurrentResourceName(), 'frak_inventory',
			{
				title  = "Frak Waffenkammer",
				elements = elements
			},
			function(data, menu)
				if data.current.type == "item_weapon" then
					menu.close()
					TriggerServerEvent('Craniax_Fraktion:getItem', name, data.current.type, data.current.value, data.current.ammo)
					ESX.SetTimeout(300, function()
						ESX.UI.Menu.CloseAll()
					end)
				else
					ESX.UI.Menu.Open(
					'dialog', GetCurrentResourceName(), 'get_item_count',
					{
					  title = "Menge",
					},
					function(data2, menu)

					  local quantity = tonumber(data2.value)

					  if quantity == nil or quantity < 1 then
						ESX.ShowNotification("Falsche Menge")
					  else

						menu.close()

						TriggerServerEvent('Craniax_Fraktion:getItem', name, data.current.type, data.current.value, quantity)

						ESX.SetTimeout(500, function()
						  ESX.UI.Menu.CloseAll()
						end)

					  end

					end,
					function(data2,menu)
					  menu.close()
					end
					)
				end
			end,
			function(data, menu)
				menu.close()
			end
		)
	end,name)
end

function openPutMenu(name)
	ESX.TriggerServerCallback('Craniax_Fraktion:getPlayerInventory', function(inventory)
		local elements = {}
		for i=1, #inventory.items, 1 do
		  local item = inventory.items[i]
		  if item.count > 0 then
			table.insert(elements, {label = item.label .. ' x' .. item.count, type = 'item_standard', value = item.name})
		  end

		end
		
		local playerPed  = GetPlayerPed(-1)
		local weaponList = ESX.GetWeaponList()

		for i=1, #weaponList, 1 do

		  local weaponHash = GetHashKey(weaponList[i].name)

		  if HasPedGotWeapon(playerPed,  weaponHash,  false) and weaponList[i].name ~= 'WEAPON_UNARMED' then
			local ammo = GetAmmoInPedWeapon(playerPed, weaponHash)
			table.insert(elements, {label = weaponList[i].label .. ' [' ..ammo .. ']', type = 'item_weapon', value = weaponList[i].name, ammo = ammo})
		  end

		end

		ESX.UI.Menu.Open(
			'default', GetCurrentResourceName(), 'player_inventory',
			{
				title  = "Frak Waffenkammer",
				elements = elements
			},
			function(data, menu)
				if data.current.type == "item_weapon" then
					menu.close()
					TriggerServerEvent('Craniax_Fraktion:putItem', name, data.current.type, data.current.value, data.current.ammo)
					
					ESX.SetTimeout(500, function()
						ESX.UI.Menu.CloseAll()
					end)
				else
					  ESX.UI.Menu.Open(
						'dialog', GetCurrentResourceName(), 'put_item_count',
						{
						  title = "Menge",
						},
						function(data2, menu)
						  local quantity = tonumber(data2.value)

						  if quantity == nil or quantity < 1 then
							ESX.ShowNotification("Falsche Menge")
						  else
							menu.close()

							TriggerServerEvent('Craniax_Fraktion:putItem', name, data.current.type, data.current.value, tonumber(data2.value))

							ESX.SetTimeout(300, function()
								ESX.UI.Menu.CloseAll()
							end)
						  end
						end,
						function(data2,menu)
						  menu.close()
						end
					  )
				end
			end,
			function(data, menu)
				menu.close()
			end
		)
	end,name)
end

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if ESX.PlayerData.gang == "Administration" then
			if IsControlJustReleased(0, 166) then
				Frakmenu()
			end
		end
	end
end)

Citizen.CreateThread(function()
	while true do
		local sleep = 500
		local coords = GetEntityCoords(PlayerPedId())
		for k,v in pairs(gangData) do
			local distance = GetDistanceBetweenCoords(coords, v.waffenkammer.x, v.waffenkammer.y, v.waffenkammer.z, true)
			if distance < 5 then
				sleep = 4
				DrawMarker(21, v.waffenkammer.x,v.waffenkammer.y,v.waffenkammer.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, Config.MarkerColor.r, Config.MarkerColor.g, Config.MarkerColor.b, 100, false, true, 2, true, false, false, false)
				if IsControlJustPressed(0, 38) then
					if ESX.PlayerData.gang == v.name then
						local test = ESX.DumpTable(ESX.PlayerData)
						--print(test)
						openWaffenkammer(v.name)
						CurrentShop = v
					end
                end
			end
		end
		Citizen.Wait(sleep)
	end
end)

Citizen.CreateThread(function()
	Citizen.Wait(5000)
    for k,v in pairs(gangData) do
      RequestModel(-1176698112)
      while not HasModelLoaded(-1176698112) do
        Wait(1)
      end
  

      ped =  CreatePed(4, -1176698112,v.garagenpc.x,v.garagenpc.y,v.garagenpc.z-1, 3374176, false, true)
      SetEntityHeading(ped, tonumber(v.heading))
      FreezeEntityPosition(ped, true)
	  SetEntityInvincible(ped, true)

      SetBlockingOfNonTemporaryEvents(ped, true)
	end
end)


local islandVec = vector3(4840.571, -5174.425, 2.0)
Citizen.CreateThread(function()
    while true do
		local pCoords = GetEntityCoords(GetPlayerPed(-1))		
			local distance1 = #(pCoords - islandVec)
			if distance1 < 2000.0 then
			Citizen.InvokeNative("0x9A9D1BA639675CF1", "HeistIsland", true)  -- load the map and removes the city
			Citizen.InvokeNative("0x5E1460624D194A38", true) -- load the minimap/pause map and removes the city minimap/pause map
			else
			Citizen.InvokeNative("0x9A9D1BA639675CF1", "HeistIsland", false)
			Citizen.InvokeNative("0x5E1460624D194A38", false)
			end
		Citizen.Wait(5000)
    end
end)


local handcuffTimer = {}
local isHandcuffed = false

RegisterNetEvent('fessel:handcuff')
AddEventHandler('fessel:handcuff', function()
	isHandcuffed = not isHandcuffed
	local playerPed = PlayerPedId()

	Citizen.CreateThread(function()
		if isHandcuffed then

			RequestAnimDict('mp_arresting')
			while not HasAnimDictLoaded('mp_arresting') do
				Citizen.Wait(100)
			end

			TaskPlayAnim(playerPed, 'mp_arresting', 'idle', 8.0, -8, -1, 49, 0, 0, 0, 0)

			SetEnableHandcuffs(playerPed, true)
			DisablePlayerFiring(playerPed, true)
			SetCurrentPedWeapon(playerPed, GetHashKey('WEAPON_UNARMED'), true) -- unarm player
			TriggerServerEvent('esx_realdrugs:stopHarvest')
			TriggerServerEvent('esx_realdrugs:stopTransform')
			TriggerServerEvent('esx_realdrugs:stopSell')
			SetPedCanPlayGestureAnims(playerPed, false)
			--FreezeEntityPosition(playerPed, true)
			DisplayRadar(false)
		end
	end)
end)

RegisterNetEvent('fessel:uncuffing')
AddEventHandler('fessel:uncuffing', function(target)
		local playerPed = PlayerPedId()
		TriggerEvent('fessel:unrestrain')
end)

RegisterNetEvent('fraktion:ausparken')
AddEventHandler('fraktion:ausparken', function(parameter)
	local playerPed = GetPlayerPed(-1)
	local coords    = GetEntityCoords(playerPed)
	ESX.Game.SpawnVehicle(parameter, coords, 0.0, function(vehicle) --get vehicle info
		if DoesEntityExist(vehicle) then
			carExist = true
			SetEntityVisible(vehicle, false, false)
			SetEntityCollision(vehicle, false)
			
			local newPlate     = exports.esx_vehicleshop:GeneratePlate()
			local vehicleProps = ESX.Game.GetVehicleProperties(vehicle)
			vehicleProps.plate = newPlate
			TriggerServerEvent('ganglogs:autospawns', vehicleProps, parameter)
			ESX.Game.DeleteVehicle(vehicle)			
		end		
	end)
end)

RegisterNetEvent('handschellen:knacken')
AddEventHandler('handschellen:knacken', function(playerid)
		local playerPed = PlayerPedId()
		RequestAnimDict('mp_uncuff_paired')
		while not HasAnimDictLoaded('mp_uncuff_paired') do
			Citizen.Wait(0)
		end
		TaskPlayAnim(GetPlayerPed(-1), 'mp_uncuff_paired' , 'crook_01_p2_fwd' ,8.0, -8.0, -1, 1, 0, false, false, false )
		Wait(4000)
		ClearPedTasksImmediately(GetPlayerPed(-1))
		local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
		TriggerServerEvent('esx_policejob:handcuffuncuff', GetPlayerServerId(closestPlayer))
		
end)

RegisterNetEvent('fessel:unrestrain')
AddEventHandler('fessel:unrestrain', function()
	if isHandcuffed then
		local playerPed = PlayerPedId()
		isHandcuffed = false

		ClearPedSecondaryTask(playerPed)
		SetEnableHandcuffs(playerPed, false)
		DisablePlayerFiring(playerPed, false)
		SetPedCanPlayGestureAnims(playerPed, true)
		FreezeEntityPosition(playerPed, false)
		DisplayRadar(true)

		-- end timer
	end
end)

RegisterNetEvent('Craniax_Fraktion:durchsuchen')
AddEventHandler('Craniax_Fraktion:durchsuchen', function()
	local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
	local closestPed = GetPlayerPed(closestPlayer)
	if closestPlayer ~= -1 and closestDistance <= 3.0 then
		if IsEntityPlayingAnim(closestPed, "mp_arresting", "idle", 49) then
			OpenBodySearchMenu(closestPlayer)
		else
			TriggerEvent("scarface_notify", "#ff0000", "Information", 'Die Person vor dir ist nicht Gefesselt.')
		end
	else
		TriggerEvent("scarface_notify", "#ff0000", "Information", 'Es ist keine Person vor dir.')
	end
end)

RegisterNetEvent('fessel:check')
AddEventHandler('fessel:check', function(dertyp)

	if isHandcuffed then
		TriggerServerEvent('fessel:uncuff')
	else
		ESX.TriggerServerCallback('fessel:checkdas', function(ok)
			if ok then
				TriggerServerEvent('fessel:dasda')
			end
		end,dertyp)
	end
end)

RegisterNetEvent('Craniax_Fraktion:fesseln')
AddEventHandler('Craniax_Fraktion:fesseln', function()
	local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
	local closestPed = GetPlayerPed(closestPlayer)
	if closestPlayer ~= -1 and closestDistance <= 3.0 then
		TriggerServerEvent('fessel:handcuff', GetPlayerServerId(closestPlayer))
	else
		TriggerEvent("scarface_notify", "#ff0000", "Information", 'Es ist keine Person vor dir.')
	end
end)

function OpenBodySearchMenu(player)
	
	ESX.TriggerServerCallback('Craniax_Fraktion:getOtherPlayerData', function(data)
		--print(data)
		local elements = {}

		for i=1, #data.accounts, 1 do
			if data.accounts[i].name == 'black_money' and data.accounts[i].money > 0 then
				table.insert(elements, {
					label    = "Schwarzgeld Konfiszieren "..ESX.Math.Round(data.accounts[i].money),
					value    = 'black_money',
					itemType = 'item_account',
					amount   = data.accounts[i].money
				})

				break
			end
		end

		table.insert(elements, {label = "Waffen"})

		for i=1, #data.weapons, 1 do
			table.insert(elements, {
				label    = "Waffe Konfiszieren "..ESX.GetWeaponLabel(data.weapons[i].name).." "..data.weapons[i].ammo,
				value    = data.weapons[i].name,
				itemType = 'item_weapon',
				amount   = data.weapons[i].ammo
			})
		end

		table.insert(elements, {label = "Inventar"})

		for i=1, #data.inventory, 1 do
			if data.inventory[i].count > 0 then
				table.insert(elements, {
					label    = "Gegenstand Konfiszieren"..data.inventory[i].count.." "..data.inventory[i].label,
					value    = data.inventory[i].name,
					itemType = 'item_standard',
					amount   = data.inventory[i].count
				})
			end
		end

		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'body_search', {
			title    = "Durchsuchen",
			align    = 'top-left',
			elements = elements
		}, function(data, menu)
			if data.current.value then
				Citizen.Wait(math.random(100,2000))
				TriggerServerEvent('gangmenu:confiscatePlayerItem', GetPlayerServerId(player), data.current.itemType, data.current.value, data.current.amount)
				OpenBodySearchMenu(player)
			end
		end, function(data, menu)
			menu.close()
		end)
	end, GetPlayerServerId(player))
end

-- Handcuff
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		local playerPed = PlayerPedId()

		if isHandcuffed then
			--DisableControlAction(0, 1, true) -- Disable pan
			DisableControlAction(0, 2, true) -- Disable tilt
			DisableControlAction(0, 24, true) -- Attack
			DisableControlAction(0, 257, true) -- Attack 2
			DisableControlAction(0, 25, true) -- Aim
			DisableControlAction(0, 263, true) -- Melee Attack 1
		--	DisableControlAction(0, 32, true) -- W
		--	DisableControlAction(0, 34, true) -- A
		--	DisableControlAction(0, 31, true) -- S
		--	DisableControlAction(0, 30, true) -- D

			DisableControlAction(0, 45, true) -- Reload
			DisableControlAction(0, 22, true) -- Jump
			DisableControlAction(0, 38, true) -- E
			DisableControlAction(0, 51, true) -- E
			DisableControlAction(0, 44, true) -- Cover
			DisableControlAction(0, 37, true) -- Select Weapon
			--DisableControlAction(0, 23, true) -- Also 'enter'?

			DisableControlAction(0, 288,  true) -- Disable phone
			DisableControlAction(0, 289, true) -- Inventory
			DisableControlAction(0, 170, true) -- Animations
			DisableControlAction(0, 167, true) -- Job

			--DisableControlAction(0, 0, true) -- Disable changing view
			--DisableControlAction(0, 26, true) -- Disable looking behind
			DisableControlAction(0, 73, true) -- Disable clearing animation
			DisableControlAction(2, 199, true) -- Disable pause screen

			DisableControlAction(0, 59, true) -- Disable steering in vehicle
			DisableControlAction(0, 71, true) -- Disable driving forward in vehicle
			DisableControlAction(0, 72, true) -- Disable reversing in vehicle

			DisableControlAction(2, 36, true) -- Disable going stealth

			DisableControlAction(0, 47, true)  -- Disable weapon
			DisableControlAction(0, 264, true) -- Disable melee
			DisableControlAction(0, 257, true) -- Disable melee
			DisableControlAction(0, 140, true) -- Disable melee
			DisableControlAction(0, 141, true) -- Disable melee
			DisableControlAction(0, 142, true) -- Disable melee
			DisableControlAction(0, 143, true) -- Disable melee
		--	DisableControlAction(0, 75, true)  -- Disable exit vehicle
		--	DisableControlAction(27, 75, true) -- Disable exit vehicle

			if IsEntityPlayingAnim(playerPed, 'mp_arresting', 'idle', 3) ~= 1 then
				ESX.Streaming.RequestAnimDict('mp_arresting', function()
					TaskPlayAnim(playerPed, 'mp_arresting', 'idle', 8.0, -8, -1, 49, 0.0, false, false, false)
				end)
			end
		else
			Citizen.Wait(500)
		end
	end
end)




