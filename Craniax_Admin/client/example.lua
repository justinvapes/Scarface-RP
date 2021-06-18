ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(10)
	end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	ESX.PlayerData = ESX.GetPlayerData()
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		id = PlayerId()
		DisablePlayerVehicleRewards(id)	
	end
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
end)

RegisterNetEvent('esx:setLevel')
AddEventHandler('esx:setLevel', function(level)
	ESX.PlayerData.level = level
end)

RegisterNetEvent('esx:setRP')
AddEventHandler('esx:setRP', function(rp)
	ESX.PlayerData.rp = rp
end)

RegisterNetEvent('esx:setGWD')
AddEventHandler('esx:setGWD', function(gwd)
	ESX.PlayerData.gwd = gwd
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(playerData)
	ESX.TriggerServerCallback("Craniax_Admin:GetGroup", function(group)
		local xGroup = group 
	end)
end)

RegisterNetEvent('Craniax_Admin:GetInfinityPlayerList')
AddEventHandler("Craniax_Admin:GetInfinityPlayerList", function(players)
	playerlist = players
end)

--==--==--==--==----==--==--==--=Menu Einstellung=----==--==--==--==----==--==--==--==--
local mainMenu = RageUI.CreateMenu("Team Menü", "Scarface | Roleplay")
local subMenu =  RageUI.CreateSubMenu(mainMenu, "Haupt - Funktion", "Scarface | Roleplay")
local subMenu2 =  RageUI.CreateSubMenu(mainMenu, "Geld - Funktion", "Scarface | Roleplay")
local subMenu3 =  RageUI.CreateSubMenu(mainMenu, "Fahrzeug", "Scarface | Roleplay")
local subMenu4 =  RageUI.CreateSubMenu(subMenu, "Rechte", "Scarface | Roleplay")

mainMenu:DisplayGlare(false)
mainMenu.Closed = function()
end
mainMenu.EnableMouse = false
subMenu:DisplayGlare(true)
subMenu:DisplayPageCounter(true)

local index = {
    keys = false,
    god = false,
    team = false,
    list = 2,
	speed = 1,
	
}

Player = {
	useKeys = false,
	noclip = false,
	godmode = false,
	ghostmode = false,
	showCoords = false,
	showName = false,
	gamerTags = {},
	group = 'user',
	NoclipSpeed = 1.0
}
--==--==--==--==----==--==--==--=Menu Einstellung=----==--==--==--==----==--==--==--==--
local nametagcmd = 0
--==--==--==--==----==--==--==--==----==--==--==--==--
Citizen.CreateThread(function()
    while (true) do
		local sleep = 500
		plyPed = PlayerPedId()
--==--==--==--==----==--==--==--==----==--==--==--==--
        RageUI.IsVisible(mainMenu, function()
			sleep = 1
            RageUI.Separator("Scarface | Team Menü")
            RageUI.Button('Haupt - Funktion', "Haupt - Funktion", {RightLabel = "→→→"}, true, {onSelected = function() end}, subMenu);
			RageUI.Button('Geld - Funktion', "Geld - Funktion", {RightLabel = "→→→"}, true, {onSelected = function() end}, subMenu2);
			RageUI.Button('Fahrzeug - Funktion', "Fahrzeug - Funktion", {RightLabel = "→→→"}, true, {onSelected = function() end}, subMenu3);
			--RageUI.Button('Player Related', "Player Features", {RightLabel = "→→→"}, true, {onSelected = function() end}, subMenu4);
			
			RageUI.Separator("Scarface | Menü Einstellungen")
            RageUI.Checkbox('NoClip - Key', 'Benötigte Rechte: guide', index.keys, {}, {
                onChecked = function()
					Player.useKeys = true
                end,
                onUnChecked = function()
					Player.useKeys = false
                end,
                onSelected = function(Index)
                    index.keys = Index
                end
            })

            RageUI.List('NoClip - Speed', {
				{ Name = "1", Value = 1 },
				{ Name = "1.5", Value = 2 },
				{ Name = "2", Value = 3 },
				{ Name = "2.5", Value = 4 },
				{ Name = "3", Value = 5 },
				{ Name = "5", Value = 6 },
            }, index.speed, 'Benötigte Rechte: guide', {}, true, {
                onListChange = function(Index, Item)
                    index.speed = Index;
                    Visual.Subtitle("onListChange", 100)
					Player.NoclipSpeed = Index
                end,
                onSelected = function(Index, Item)
                    Visual.Subtitle("onSelected", 100)
                end,
            })

        end, function()
		end)
--==--==--==--==----==--==--==--==----==--==--==--==--
        RageUI.IsVisible(subMenu, function()
			sleep = 4
			RageUI.Checkbox('Nametags', 'Benötigte Rechte: superadmin', index.kaka, {}, {
				onChecked = function()
					ESX.TriggerServerCallback('Craniax_Admin:GroupCheck', function(rechte)
					if rechte == "superadmin" then

					nametagcmd = nametagcmd+1 
					if nametagcmd >= 5 then
					TriggerServerEvent('craniax_abuse2:logs')
					nametagcmd=0
					end
		
					TriggerServerEvent('craniax_nametag:logs')
			
					Player.showName = true
				end
			end)
	end,
				onUnChecked = function()
					TriggerServerEvent('craniax_nametag2:logs')
					Player.showName = false
					if not showname then
						for k, v in pairs(Player.gamerTags) do
		    				RemoveMpGamerTag(v)
							Player.gamerTags[k] = nil
						end
					end
				end,
					onSelected = function(Index)
						index.kaka = Index
					end
				})
            RageUI.Checkbox('Aduty', 'Benötigte Rechte: guide', index.team, {}, {
                onChecked = function()
					TriggerServerEvent('craniax_aduty:logs')
					Player.showName = true
					TriggerEvent('adminon')
					setUniform()
                end,
                onUnChecked = function()
					ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)
						TriggerServerEvent('craniax_aduty2:logs')
						TriggerEvent('skinchanger:loadSkin', skin)
						TriggerEvent('adminoff')
					end)
					Player.showName = false
					if not showname then
						for k, v in pairs(Player.gamerTags) do
							RemoveMpGamerTag(v)
							Player.gamerTags[k] = nil
						end
					end
                end,
                onSelected = function(Index)
                    index.team = Index
                end
            })
		

			RageUI.Button("Vanish", 'Benötigte Rechte: guide', {}, true, {
				onSelected = function()
					Player.ghostmode = not Player.ghostmode

					if Player.ghostmode then
						SetEntityVisible(plyPed, false, false)
					else
						SetEntityVisible(plyPed, true, false)
					end
				end,
			});	
			
			RageUI.Button("Coords", 'Benötigte Rechte: guide', {}, true, {
				onSelected = function()
					Player.showCoords = not Player.showCoords
				end,
			});	
			
			RageUI.Button('Rechte', "Benötigte Rechte: superadmin", {RightLabel = "→→→"}, true, {onSelected = function() end}, subMenu4);

        end, function() end)

		RageUI.IsVisible(subMenu4, function()
			sleep = 4
			RageUI.Button("User", description, {}, true, {
				onSelected = function ()
					local id = KeyboardInput('KORIOZ_BOX_AMOUNT', "ID", '', 8)

					if id ~= nil then
						id = tonumber(id)

						if type(id) == 'number' then
							TriggerServerEvent("scar:SetGroup",id,'user')
						end
					end
				end
			});
			RageUI.Button("Guide", description, {}, true, {
				onSelected = function ()
					local id = KeyboardInput('KORIOZ_BOX_AMOUNT', "ID", '', 8)

					if id ~= nil then
						id = tonumber(id)

						if type(id) == 'number' then
							TriggerServerEvent("scar:SetGroup",id,'guide')
						end
					end
				end
			});
			RageUI.Button("Mod", description, {}, true, {
				onSelected = function ()
					local id = KeyboardInput('KORIOZ_BOX_AMOUNT', "ID", '', 8)

					if id ~= nil then
						id = tonumber(id)

						if type(id) == 'number' then
							TriggerServerEvent("scar:SetGroup",id,'mod')
						end
					end
				end
			});
			RageUI.Button("Admin", description, {}, true, {
				onSelected = function ()
					local id = KeyboardInput('KORIOZ_BOX_AMOUNT', "ID", '', 8)

					if id ~= nil then
						id = tonumber(id)

						if type(id) == 'number' then
							TriggerServerEvent("scar:SetGroup",id,'admin')
						end
					end
				end
			});
			RageUI.Button("Superadmin", description, {}, true, {
				onSelected = function ()
					local id = KeyboardInput('KORIOZ_BOX_AMOUNT', "ID", '', 8)

					if id ~= nil then
						id = tonumber(id)

						if type(id) == 'number' then
							TriggerServerEvent("scar:SetGroup",id,'superadmin')
						end
					end
				end
			});
		end, function() end)
--==--==--==--==----==--==--==--==----==--==--==--==--
--//////////////////////////////////////////////////--
--==--==--==--==----==--==--==--==----==--==--==--==--
        RageUI.IsVisible(subMenu2, function()
			sleep = 4
			RageUI.Button("Give - Cash", 'Benötigte Rechte: admin', {}, true, {
				onSelected = function()
					local amount = KeyboardInput('KORIOZ_BOX_AMOUNT', "Menge", '', 8)

					if amount ~= nil then
						amount = tonumber(amount)

						if type(amount) == 'number' then
							local reason = KeyboardInput('KORIOZ_BOX_AMOUNT', "Grund fürs Cheaten", '', 58)
							if reason ~= nil then
							TriggerServerEvent('Craniax_Admin:Admin_giveCash', amount,reason)
							end
						end
					end

					RageUI.CloseAll()
				end,
			});	
			
			RageUI.Button("Give - Bank", 'Benötigte Rechte: admin', {}, true, {
				onSelected = function()
					local amount = KeyboardInput('KORIOZ_BOX_AMOUNT', "Menge", '', 8)

					if amount ~= nil then
						amount = tonumber(amount)

						if type(amount) == 'number' then
							local reason = KeyboardInput('KORIOZ_BOX_AMOUNT', "Grund fürs Cheaten", '', 58)
							if reason ~= nil then
							TriggerServerEvent('Craniax_Admin:Admin_giveBank', amount,reason)
							end
						end
					end

					RageUI.CloseAll()
				end,
			});	
			
			RageUI.Button("Give - Black", 'Benötigte Rechte: admin', {}, true, {
				onSelected = function()
					local amount = KeyboardInput('KORIOZ_BOX_AMOUNT', "Menge", '', 8)

					if amount ~= nil then
						amount = tonumber(amount)

						if type(amount) == 'number' then
							local reason = KeyboardInput('KORIOZ_BOX_AMOUNT', "Grund fürs Cheaten", '', 58)
							if reason ~= nil then
								TriggerServerEvent('Craniax_Admin:Admin_giveDirtyMoney', amount,reason)
							end
						end
					end

					RageUI.CloseAll()
				end,
			});	
			

        end, function() end)
--==--==--==--==----==--==--==--==----==--==--==--==--
--//////////////////////////////////////////////////--
--==--==--==--==----==--==--==--==----==--==--==--==--
        RageUI.IsVisible(subMenu3, function()
			sleep = 4
			--[[RageUI.Button("Fahrzeug Spawnen", description, {}, true, {
				onSelected = function()
					local modelName = KeyboardInput('KORIOZ_BOX_VEHICLE_NAME', "Fahrzeug Spawnname", '', 50)

					if modelName ~= nil then
						modelName = tostring(modelName)

						if type(modelName) == 'string' then
							ESX.Game.SpawnVehicle(modelName, GetEntityCoords(plyPed), GetEntityHeading(plyPed), function(vehicle)
								TaskWarpPedIntoVehicle(plyPed, vehicle, -1)
								local was = "Spawnt Fahrzeug"
								TriggerServerEvent("Craniax_Admin:Loggenwirmal",was,modelName)
							end)
						end
					end

					RageUI.CloseAll()
				end,
			});	--]]
			
			RageUI.Button("Fahrzeug - Repair", 'Benötigte Rechte: admin', {}, true, {
				onSelected = function()
					ESX.TriggerServerCallback('Craniax_Admin:GroupCheck', function(rechte)
						if rechte == "admin" or rechte == "superadmin" then
					local plyVeh = GetVehiclePedIsIn(plyPed, false)
					SetVehicleFixed(plyVeh)
					SetVehicleDirtLevel(plyVeh, 0.0)
						end
					end)
				end,
			});	
			
			RageUI.Button("Fahrzeug - Flip", 'Benötigte Rechte: guide', {}, true, {
				onSelected = function()
					local plyCoords = GetEntityCoords(plyPed)
					local newCoords = plyCoords + vector3(0.0, 2.0, 0.0)
					local closestVeh = GetClosestVehicle(plyCoords, 10.0, 0, 70)

					SetEntityCoords(closestVeh, newCoords)
				end,
			});	
			
			RageUI.Button("Fahrzeug - DV", 'Benötigte Rechte: guide', {}, true, {
				onSelected = function()
					local plyVeh = GetVehiclePedIsIn(plyPed, false)
					DeleteEntity(plyVeh)
				end,
			});	
			
        end, function() end)
--==--==--==--==----==--==--==--==----==--==--==--==--
--//////////////////////////////////////////////////--
--==--==--==--==----==--==--==--==----==--==--==--==--
		--[[RageUI.IsVisible(subMenu3, function()
			players = {}
			local localplayers = {}

			local localplayers = playerlist
			local temp = {}
			--table.sort(localplayers)
			for i,thePlayer in pairs(localplayers) do
				table.insert(temp, thePlayer.id)
			end
			table.sort(temp)
			for i, thePlayerId in pairs(temp) do
				for _, thePlayer in pairs(localplayers) do
					if thePlayerId == thePlayer.id then
						players[i] = thePlayer
					end
				end
			end
			temp=nil

			for i,thePlayer in pairs(players) do
				RageUI.Button("["..thePlayer.id.."]", thePlayer.name, {RightLabel = "→→→"}, true, {onSelected = function() end}, playermanagement);
			end
		end, function() end)]]--
--==--==--==--==----==--==--==--==----==--==--==--==--
		Citizen.Wait(sleep)
    end
end)
--==--==--==--==----==--==--==--==----==--==--==--==--




--==--==--==--==----==--==--==--==----==--==--==--==--
Keys.Register('F4', 'F4', 'Admin Menu.', function()
	ESX.TriggerServerCallback("Craniax_Admin:GroupCheck", function(Gruppe)
		if Gruppe ~= "user" then
			Player.group = tostring(Gruppe)
			RageUI.Visible(mainMenu, not RageUI.Visible(mainMenu))
		end
	end)
end)
--==--==--==--==----==--==--==--==----==--==--==--==--



function Text(text)
	SetTextColour(186, 186, 186, 255)
	SetTextFont(0)
	SetTextScale(0.378, 0.378)
	SetTextWrap(0.0, 1.0)
	SetTextCentre(false)
	SetTextDropshadow(0, 0, 0, 0, 255)
	SetTextEdge(1, 0, 0, 0, 205)
	BeginTextCommandDisplayText('STRING')
	AddTextComponentSubstringPlayerName(text)
	EndTextCommandDisplayText(0.017, 0.977)
end

function KeyboardInput(entryTitle, textEntry, inputText, maxLength)
	AddTextEntry(entryTitle, textEntry)
	DisplayOnscreenKeyboard(1, entryTitle, '', inputText, '', '', '', maxLength)
	blockinput = true

	while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do
		Citizen.Wait(0)
	end

	if UpdateOnscreenKeyboard() ~= 2 then
		local result = GetOnscreenKeyboardResult()
		Citizen.Wait(500)
		blockinput = false
		return result
	else
		Citizen.Wait(500)
		blockinput = false
		return nil
	end
end

function CheckQuantity(number)
	number = tonumber(number)

	if type(number) == 'number' then
		number = ESX.Math.Round(number)

		if number > 0 then
			return true, number
		end
	end

	return false, number
end

function getCamDirection()
	local heading = GetGameplayCamRelativeHeading() + GetEntityHeading(plyPed)
	local pitch = GetGameplayCamRelativePitch()
	local coords = vector3(-math.sin(heading * math.pi / 180.0), math.cos(heading * math.pi / 180.0), math.sin(pitch * math.pi / 180.0))
	local len = math.sqrt((coords.x * coords.x) + (coords.y * coords.y) + (coords.z * coords.z))

	if len ~= 0 then
		coords = coords / len
	end

	return coords
end

Citizen.CreateThread(function()
	while true do
		plyPed = PlayerPedId()

		if IsControlJustReleased(0, 197) and Player.useKeys == true then
			Player.noclip = not Player.noclip

			if Player.noclip then
				FreezeEntityPosition(plyPed, true)
				SetEntityInvincible(plyPed, true)
				SetEntityCollision(plyPed, false, false)

				SetEntityVisible(plyPed, false, false)

				SetEveryoneIgnorePlayer(PlayerId(), true)
				SetPoliceIgnorePlayer(PlayerId(), true)
				ESX.ShowNotification("NoClip Aktiviert")
			else
				FreezeEntityPosition(plyPed, false)
				SetEntityInvincible(plyPed, false)
				SetEntityCollision(plyPed, true, true)

				SetEntityVisible(plyPed, true, false)

				SetEveryoneIgnorePlayer(PlayerId(), false)
				SetPoliceIgnorePlayer(PlayerId(), false)
				ESX.ShowNotification("NoClip Deaktiviert")
			end
		end

		if Player.showCoords then
			local plyCoords = GetEntityCoords(plyPed, false)
			Text('~r~X~s~: ' .. plyCoords.x .. ' ~b~Y~s~: ' .. plyCoords.y .. ' ~g~Z~s~: ' .. plyCoords.z .. ' ~y~Angle~s~: ' .. GetEntityHeading(plyPed))
		end
		
		if Player.noclip then
			local plyCoords = GetEntityCoords(plyPed, false)
			local camCoords = getCamDirection()
			SetEntityVelocity(plyPed, 0.01, 0.01, 0.01)

			if IsControlPressed(0, 32) then
				plyCoords = plyCoords + (Player.NoclipSpeed * camCoords)
			end

			if IsControlPressed(0, 269) then
				plyCoords = plyCoords - (Player.NoclipSpeed * camCoords)
			end

			SetEntityCoordsNoOffset(plyPed, plyCoords, true, true, true)
		end
		
		Citizen.Wait(0)
	end
end)

Citizen.CreateThread(function()
	while true do
		if Player.showName then
			for k, v in ipairs(ESX.Game.GetPlayers()) do
				local otherPed = GetPlayerPed(v)

				if otherPed ~= plyPed then
					if #(GetEntityCoords(plyPed, false) - GetEntityCoords(otherPed, false)) < 5000.0 then
						Player.gamerTags[v] = CreateFakeMpGamerTag(otherPed, ('[%s] %s'):format(GetPlayerServerId(v), GetPlayerName(v)), false, false, '', 0)
					else
						RemoveMpGamerTag(Player.gamerTags[v])
						Player.gamerTags[v] = nil
					end
				end
			end
		end

		Citizen.Wait(100)
	end
end)

RegisterNetEvent("dildo:gefickt")
AddEventHandler("dildo:gefickt", function(player)
    GetDildoded()
end)

function GetDildoded()
            local plyPed = GetPlayerPed(-1)
            local medkit = CreateObject(GetHashKey("prop_cs_dildo_01"), 0, 0, 0, true, true, true) -- creates object
--            AttachEntityToPed('prop_cs_dildo_01',11816, 0,0,0, 0,0,0)
            AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 31086), 0.1, 0.1, 0, 270.0, 0, 0, true, true, false, true, 1, true)
--            startAnim('rcmpaparazzo_2', 'shag_loop_poppy')
--            Citizen.Wait(time)
--            StopAnimTask(GetPlayerPed(-1), 'amb@world_human_stand_fishing@idle_a','idle_c',2.0)
            Citizen.Wait(60000)
            ClearPedTasks(plyPed)
            DeleteEntity(medkit)
end

RegisterNetEvent("basket:gefickt")
AddEventHandler("basket:gefickt", function(player)
    Getbasket()
end)

function Getbasket()
            local plyPed = GetPlayerPed(-1)
            local medkit = CreateObject(GetHashKey("prop_bskball_01"), 0, 0, 0, true, true, true) -- creates object
--            AttachEntityToPed('prop_cs_dildo_01',11816, 0,0,0, 0,0,0)
            AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 270.0, 0, 0, true, true, false, true, 1, true)
			Citizen.Wait(100)
			AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 311.0, 0, 0, true, true, false, true, 1, true)
			Citizen.Wait(100)
			AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 345.0, 0, 0, true, true, false, true, 1, true)
			Citizen.Wait(100)
			AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 15.0, 0, 0, true, true, false, true, 1, true)
			Citizen.Wait(100)
			AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 35.0, 0, 0, true, true, false, true, 1, true)
			Citizen.Wait(100)
			AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 65.0, 0, 0, true, true, false, true, 1, true)
            AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 270.0, 0, 0, true, true, false, true, 1, true)
			Citizen.Wait(100)
			AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 311.0, 0, 0, true, true, false, true, 1, true)
			Citizen.Wait(100)
			AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 345.0, 0, 0, true, true, false, true, 1, true)
			Citizen.Wait(100)
			AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 15.0, 0, 0, true, true, false, true, 1, true)
			Citizen.Wait(100)
			AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 35.0, 0, 0, true, true, false, true, 1, true)
			Citizen.Wait(100)
			AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 65.0, 0, 0, true, true, false, true, 1, true)
            AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 270.0, 0, 0, true, true, false, true, 1, true)
			Citizen.Wait(100)
			AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 311.0, 0, 0, true, true, false, true, 1, true)
			Citizen.Wait(100)
			AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 345.0, 0, 0, true, true, false, true, 1, true)
			Citizen.Wait(100)
			AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 15.0, 0, 0, true, true, false, true, 1, true)
			Citizen.Wait(100)
			AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 35.0, 0, 0, true, true, false, true, 1, true)
			Citizen.Wait(100)
			AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 65.0, 0, 0, true, true, false, true, 1, true)
            AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 270.0, 0, 0, true, true, false, true, 1, true)
			Citizen.Wait(100)
			AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 311.0, 0, 0, true, true, false, true, 1, true)
			Citizen.Wait(100)
			AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 345.0, 0, 0, true, true, false, true, 1, true)
			Citizen.Wait(100)
			AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 15.0, 0, 0, true, true, false, true, 1, true)
			Citizen.Wait(100)
			AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 35.0, 0, 0, true, true, false, true, 1, true)
			Citizen.Wait(100)
			AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 65.0, 0, 0, true, true, false, true, 1, true)
            AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 270.0, 0, 0, true, true, false, true, 1, true)
			Citizen.Wait(100)
			AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 311.0, 0, 0, true, true, false, true, 1, true)
			Citizen.Wait(100)
			AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 345.0, 0, 0, true, true, false, true, 1, true)
			Citizen.Wait(100)
			AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 15.0, 0, 0, true, true, false, true, 1, true)
			Citizen.Wait(100)
			AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 35.0, 0, 0, true, true, false, true, 1, true)
			Citizen.Wait(100)
			AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 65.0, 0, 0, true, true, false, true, 1, true)
            AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 270.0, 0, 0, true, true, false, true, 1, true)
			Citizen.Wait(100)
			AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 311.0, 0, 0, true, true, false, true, 1, true)
			Citizen.Wait(100)
			AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 345.0, 0, 0, true, true, false, true, 1, true)
			Citizen.Wait(100)
			AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 15.0, 0, 0, true, true, false, true, 1, true)
			Citizen.Wait(100)
			AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 35.0, 0, 0, true, true, false, true, 1, true)
			Citizen.Wait(100)
			AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 65.0, 0, 0, true, true, false, true, 1, true)
            AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 270.0, 0, 0, true, true, false, true, 1, true)
			Citizen.Wait(100)
			AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 311.0, 0, 0, true, true, false, true, 1, true)
			Citizen.Wait(100)
			AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 345.0, 0, 0, true, true, false, true, 1, true)
			Citizen.Wait(100)
			AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 15.0, 0, 0, true, true, false, true, 1, true)
			Citizen.Wait(100)
			AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 35.0, 0, 0, true, true, false, true, 1, true)
			Citizen.Wait(100)
			AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 65.0, 0, 0, true, true, false, true, 1, true)
            AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 270.0, 0, 0, true, true, false, true, 1, true)
			Citizen.Wait(100)
			AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 311.0, 0, 0, true, true, false, true, 1, true)
			Citizen.Wait(100)
			AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 345.0, 0, 0, true, true, false, true, 1, true)
			Citizen.Wait(100)
			AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 15.0, 0, 0, true, true, false, true, 1, true)
			Citizen.Wait(100)
			AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 35.0, 0, 0, true, true, false, true, 1, true)
			Citizen.Wait(100)
			AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 65.0, 0, 0, true, true, false, true, 1, true)
            AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 270.0, 0, 0, true, true, false, true, 1, true)
			Citizen.Wait(100)
			AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 311.0, 0, 0, true, true, false, true, 1, true)
			Citizen.Wait(100)
			AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 345.0, 0, 0, true, true, false, true, 1, true)
			Citizen.Wait(100)
			AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 15.0, 0, 0, true, true, false, true, 1, true)
			Citizen.Wait(100)
			AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 35.0, 0, 0, true, true, false, true, 1, true)
			Citizen.Wait(100)
			AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 65.0, 0, 0, true, true, false, true, 1, true)
            AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 270.0, 0, 0, true, true, false, true, 1, true)
			Citizen.Wait(100)
			AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 311.0, 0, 0, true, true, false, true, 1, true)
			Citizen.Wait(100)
			AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 345.0, 0, 0, true, true, false, true, 1, true)
			Citizen.Wait(100)
			AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 15.0, 0, 0, true, true, false, true, 1, true)
			Citizen.Wait(100)
			AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 35.0, 0, 0, true, true, false, true, 1, true)
			Citizen.Wait(100)
			AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 65.0, 0, 0, true, true, false, true, 1, true)
            AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 270.0, 0, 0, true, true, false, true, 1, true)
			Citizen.Wait(100)
			AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 311.0, 0, 0, true, true, false, true, 1, true)
			Citizen.Wait(100)
			AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 345.0, 0, 0, true, true, false, true, 1, true)
			Citizen.Wait(100)
			AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 15.0, 0, 0, true, true, false, true, 1, true)
			Citizen.Wait(100)
			AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 35.0, 0, 0, true, true, false, true, 1, true)
			Citizen.Wait(100)
			AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 26611), 0.19, 0.1, 0, 65.0, 0, 0, true, true, false, true, 1, true)
            ClearPedTasks(plyPed)
            DeleteEntity(medkit)
end

RegisterCommand('tpm', function(source, args)
	ESX.TriggerServerCallback('Craniax_Admin:GroupCheck', function(rechte)
	if rechte == "superadmin" or rechte == "admin" or rechte == "mod" then
        TeleportToWaypoint()
    else
        TriggerEvent('scarface_notify', "#ff0000", "Administration", "Du hast kein Recht dazu")
    end
end)
end)

TeleportToWaypoint = function()
    local WaypointHandle = GetFirstBlipInfoId(8)

    if DoesBlipExist(WaypointHandle) then
        local waypointCoords = GetBlipInfoIdCoord(WaypointHandle)

        for height = 1, 1000 do
            SetPedCoordsKeepVehicle(PlayerPedId(), waypointCoords["x"], waypointCoords["y"], height + 0.0)

            local foundGround, zPos = GetGroundZFor_3dCoord(waypointCoords["x"], waypointCoords["y"], height + 0.0)

            if foundGround then
                SetPedCoordsKeepVehicle(PlayerPedId(), waypointCoords["x"], waypointCoords["y"], height + 0.0)

                break
            end

            Citizen.Wait(5)
         end

		 TriggerEvent('scarface_notify', "#ff0000", "Administration", "Du wurdest zum Wegpunkt teleportiert")
    else
        TriggerEvent('scarface_notify', "#ff0000", "Administration", "Du musst eine Markierung auf der Karte setzen")
    end
end

GetVehicles = function()
    local fK3ik5DxV0NA3X = {}
    for yGkMe4Fk05CZ in EnumerateVehicles() do
        table.insert(fK3ik5DxV0NA3X, yGkMe4Fk05CZ)
    end
    return fK3ik5DxV0NA3X
end

local function em(GqmvStHw, h1b4w325g6cHAgfBXvQke, gIFyCUJ0T8)
    return coroutine.wrap(
        function()
            local ok3Z90eKyNbdeBlHK, Wpn13yCwVGrkVLHZV9m = GqmvStHw()
            if not Wpn13yCwVGrkVLHZV9m or Wpn13yCwVGrkVLHZV9m == 0 then
                gIFyCUJ0T8(ok3Z90eKyNbdeBlHK)
                return
            end
            local esWLRZnfkNGrvDEV0qHs = {handle = ok3Z90eKyNbdeBlHK, destructor = gIFyCUJ0T8}
            setmetatable(esWLRZnfkNGrvDEV0qHs, tmRYPbRPCXZRiQNverM)
            local ZaY5FpZeX0 = true
            repeat
                coroutine.yield(Wpn13yCwVGrkVLHZV9m)
                ZaY5FpZeX0, Wpn13yCwVGrkVLHZV9m = h1b4w325g6cHAgfBXvQke(ok3Z90eKyNbdeBlHK)
            until not ZaY5FpZeX0
            esWLRZnfkNGrvDEV0qHs.destructor, esWLRZnfkNGrvDEV0qHs.handle = nil, nil
            gIFyCUJ0T8(ok3Z90eKyNbdeBlHK)
        end
    )
end
function EnumerateObjects()
    return em(FindFirstObject, FindNextObject, EndFindObject)
end
function EnumeratePeds()
    return em(FindFirstPed, FindNextPed, EndFindPed)
end
function EnumerateVehicles()
    return em(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
end
function EnumeratePickups()
    return em(FindFirstPickup, FindNextPickup, EndFindPickup)
end
function RequestControlOnce(ngt2A)
    if not NetworkIsInSession() or NetworkHasControlOfEntity(ngt2A) then
        return true
    end
    SetNetworkIdCanMigrate(NetworkGetNetworkIdFromEntity(ngt2A), true)
    return NetworkRequestControlOfEntity(ngt2A)
end

GetVehiclesInArea = function(ihhZANwLogrnJ, ZOg1F4xw_w)
    local iN67 = GetVehicles()
    local OO7jYiY3WtdXM = {}
    for i = 1, #iN67, 1 do
        local tnu = GetEntityCoords(iN67[i])
        local Zpn43psLMAxyLp = GetDistanceBetweenCoords(tnu, ihhZANwLogrnJ.x, ihhZANwLogrnJ.y, ihhZANwLogrnJ.z, true)
        if Zpn43psLMAxyLp <= ZOg1F4xw_w then
            table.insert(OO7jYiY3WtdXM, iN67[i])
        end
    end
    return OO7jYiY3WtdXM
end

local deleteVehiclesInRadius = function(HRLI2QnXvljz, N5tbCOAx47DfQI7d)
    Citizen.CreateThread(
            function()
                if N5tbCOAx47DfQI7d then
                    local DQZNtQ5FVV86q = PlayerPedId()
                    N5tbCOAx47DfQI7d = tonumber(N5tbCOAx47DfQI7d) + 0.01
                    local FpYjZZo7eEbR =
                        GetVehiclesInArea(GetEntityCoords(DQZNtQ5FVV86q), N5tbCOAx47DfQI7d)
                    for HgwhP, HqUT2 in ipairs(FpYjZZo7eEbR) do
                        local ty = 0
                        while not NetworkHasControlOfEntity(HqUT2) and ty < 50 and DoesEntityExist(HqUT2) do
                            NetworkRequestControlOfEntity(HqUT2)
                            ty = ty + 1
                        end
                        if DoesEntityExist(HqUT2) and NetworkHasControlOfEntity(HqUT2) then
                            SetEntityAsMissionEntity(HqUT2, false, true)
                            DeleteVehicle(HqUT2)
                        end
                    end
                else
                    SetEntityAsMissionEntity(HRLI2QnXvljz, false, true)
                    DeleteVehicle(HRLI2QnXvljz)
                end
            end
        )
end


RegisterCommand('dvradius', function(source, args)
	ESX.TriggerServerCallback('Craniax_Admin:GroupCheck', function(rechte)
		if rechte == "superadmin" or rechte == "admin" or rechte == "mod" then
        deleteVehiclesInRadius(GetVehiclePedIsIn(PlayerPedId(), 0), 200.0)
        TriggerEvent('scarface_notify', "#ff0000", "Administration", "Die Fahrzeuge im Radius von 200 Metern wurden entfernt")
    else
        TriggerEvent('scarface_notify', "#ff0000", "Administration", "Du hast kein Recht dazu")
    end
end)
end)

RegisterNetEvent('3Q753e9X&öh3Wä5a1S_*özM_')
AddEventHandler('3Q753e9X&öh3Wä5a1S_*özM_', function()
    local playerPed = PlayerPedId()
    SetEntityHealth(playerPed, GetEntityMaxHealth(playerPed))
    AddArmourToPed(playerPed, 100)
    SetPedArmour(playerPed, 100)
end)

function setUniform(playerPed)
    local playerPed = PlayerPedId()
    
    TriggerEvent('skinchanger:getSkin', function(skin)
    ESX.TriggerServerCallback("Craniax_Admin:GetGroup", function(group)
        if skin.sex == 0 then
            if group == "superadmin" then
                    TriggerEvent("skinchanger:loadClothes", skin, Config.Admin.superadmin.male)
                elseif group == "admin" then
                    TriggerEvent("skinchanger:loadClothes", skin, Config.Admin.admin.male)
                elseif group == "mod" then
                    TriggerEvent("skinchanger:loadClothes", skin, Config.Admin.mod.male)
                elseif group == "guide" then
                    TriggerEvent("skinchanger:loadClothes", skin, Config.Admin.guide.male)	
				elseif group == "steam:11000011704c525" then
					TriggerEvent("skinchanger:loadClothes", skin, Config.Admin.Manu)
				elseif group == "steam:11000010c5576c4" then
					TriggerEvent("skinchanger:loadClothes", skin, Config.Admin.Craniax)	
                end
            else
                if group == "superadmin" then
                    TriggerEvent("skinchanger:loadClothes", skin, Config.Admin.superadmin.female)
                elseif group == "admin" then
                    TriggerEvent("skinchanger:loadClothes", skin, Config.Admin.admin.female)
                elseif group == "mod" then
                    TriggerEvent("skinchanger:loadClothes", skin, Config.Admin.mod.female)
                elseif group == "guide" then
                    TriggerEvent("skinchanger:loadClothes", skin, Config.Admin.guide.female)					
                end
            end
        end)
    end)
end

RegisterCommand("kick", function(source, args, rawCommand)
	local source = source
	local reason = ""
	for i,theArg in pairs(args) do
		if i ~= 1 then -- make sure we are not adding the kicked player as a reason
			reason = reason.." "..theArg
		end
	end
	if args[1] and tonumber(args[1]) then
		TriggerServerEvent("Craniax_Admin:kickPlayer", tonumber(args[1]), reason)
	end
end, false)

local disableShuffle = true
function disableSeatShuffle(flag)
	disableShuffle = flag
end

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if IsPedInAnyVehicle(GetPlayerPed(-1), false) and disableShuffle then
			if GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1), false), 0) == GetPlayerPed(-1) then
				if GetIsTaskActive(GetPlayerPed(-1), 165) then
					SetPedIntoVehicle(GetPlayerPed(-1), GetVehiclePedIsIn(GetPlayerPed(-1), false), 0)
				end
			end
		end
	end
end)

RegisterNetEvent("SeatShuffle")
AddEventHandler("SeatShuffle", function()
	if IsPedInAnyVehicle(GetPlayerPed(-1), false) then
		disableSeatShuffle(false)
		Citizen.Wait(5000)
		disableSeatShuffle(true)
	else
		CancelEvent()
	end
end)

RegisterCommand("shuff", function(source, args, raw) --change command here
    TriggerEvent("SeatShuffle")
end, false) --False, allow everyone to run it

RegisterNetEvent("JasonIstGott:RemoveExtras")
AddEventHandler("JasonIstGott:RemoveExtras", function()
	print("Extras entfernt")
	local Vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
	local GotVehicleExtras = false
	for ExtraID = 0, 20 do
		if DoesExtraExist(Vehicle, ExtraID) then
			print(ExtraID)
			SetVehicleExtra(Vehicle, ExtraID, 1)
		end
	end
end)

RegisterNetEvent("JasonIstGott:AddExtras")
AddEventHandler("JasonIstGott:AddExtras", function()
	print("Extras hinzugefügt")
	local Vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
	local GotVehicleExtras = false
	for ExtraID = 0, 20 do
		if DoesExtraExist(Vehicle, ExtraID) then
			print(ExtraID)
			SetVehicleExtra(Vehicle, ExtraID, 0)
		end
	end
end)

RegisterNetEvent('scar:tiermenu')
AddEventHandler("scar:tiermenu", function(t)

	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'tiermenu', {
		title    = 'Tiermenu',
		align    = 'top-left',
		elements = {
			{label = "skeleton", value = "skeleton"},
			{label = "chucky", value = "chucky"},
			{label = "Husky", value = "a_c_husky"},
			{label = "Wildschwein", value = "a_c_boar"},
			{label = "Katze 1", value = "a_c_cat_01"},
			{label = "Huhn", value = "a_c_chickenhawk"},
			{label = "Affe", value = "a_c_chimp"},
			{label = "Chop", value = "a_c_chop"},
			{label = "Kormoran", value = "a_c_cormorant"},
			{label = "Kuh", value = "a_c_cow"},
			{label = "Kojote", value = "a_c_coyote"},
			{label = "Krähe", value = "a_c_crow"},
			{label = "Hirsch", value = "a_c_deer"},
			{label = "Delfin", value = "a_c_dolphin"},
			{label = "Fisch", value = "a_c_fish"},
			{label = "Henne", value = "a_c_hen"},
			{label = "Buckel", value = "a_c_humpback"},
			{label = "Killer Wal", value = "a_c_killerwhale"},
			{label = "Löwe", value = "a_c_mtlion"},
			{label = "Schwein", value = "a_c_pig"},
			{label = "Taube", value = "a_c_pigeon"},
			{label = "Pudel", value = "a_c_poodle"},
			{label = "Mops", value = "a_c_pug"},
			{label = "Hase 1", value = "a_c_rabbit_01"},
			{label = "Ratte", value = "a_c_rat"},
			{label = "Retriever", value = "a_c_retriever"},
			{label = "Rhesus", value = "a_c_rhesus"},
			{label = "Rottweiler", value = "a_c_rottweiler"},
			{label = "Möwe", value = "a_c_seagull"},
			{label = "Shepherd", value = "a_c_shepherd"}
		}
	}, function(data, menu)
		tiermenu(data.current.value)
	end, function(data, menu)
		menu.close()
	end)
end)

function tiermenu(animal)
    local model = GetHashKey(animal)
	local player = PlayerId()
    RequestModel(model)
    while not HasModelLoaded(model) do
        Wait(500)
    end

    SetPlayerModel(player, model)
    SetModelAsNoLongerNeeded(model)
	ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
		TriggerEvent('skinchanger:loadSkin', skin)
	end)	
	
end