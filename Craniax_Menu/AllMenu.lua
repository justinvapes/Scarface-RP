ESX = nil
local kino = false

local mainMenu = RageUI.CreateMenu("SCARFACE", "Personalmenu")
local subMenu2 =  RageUI.CreateSubMenu(mainMenu, "Inventar", "SCARFACE")
local subMenu =  RageUI.CreateSubMenu(mainMenu, "Personalien", "SCARFACE")
local subMenu3 =  RageUI.CreateSubMenu(mainMenu, "Fahrzeug", "SCARFACE")
local subMenu4 =  RageUI.CreateSubMenu(mainMenu, "Rechnungen", "SCARFACE")
local subMenu5 =  RageUI.CreateSubMenu(mainMenu, "Einstellungen", "SCARFACE")
local subMenu6 =  RageUI.CreateSubMenu(mainMenu, "Frakmanagement", "SCARFACE")
local subMenu7 =  RageUI.CreateSubMenu(mainMenu, "Jobmanagement", "SCARFACE")
RMenu.Add('inventory', 'actions', RageUI.CreateSubMenu(subMenu2, "inventory", "actions"))

mainMenu:DisplayGlare(false)
mainMenu.Closed = function()
	--print('Closed Showcase Menu')
end
mainMenu.EnableMouse = false
mainMenu.onIndexChange = function(Index)
	--print(Index)
end

--> This will show the glare on the submenu : 
subMenu:DisplayGlare(true)

--> This will show the page counter on the submenu :
subMenu:DisplayPageCounter(true)

--> This will show the glare on the submenu : 
subMenu2:DisplayGlare(true)

--> This will show the page counter on the submenu :
subMenu2:DisplayPageCounter(true)

local index = {
    checkbox = false,
	ItemSelected = {},
	WeaponData = {},
	BillData = {},
	Maxrank = nil,
	ItemIndex = 3,
    perso = 2,
	schein = 2,
	frakdings = 1,
	jobdings = 1,
	waffenschein = 2,
	geld = 2,
	Doors = 1,
	Motorhaube = 1,
	Kofferraum = 1,
	schwarzgeld = 2,
    heritage = 0.5,
    slider = 50,
    sliderprogress = 50,
	DoorState = {
		FrontLeft = false,
		FrontRight = false,
		BackLeft = false,
		BackRight = false,
		Hood = false,
		Trunk = false
	},
    grid = {
        default = { x = 0.5, y = 0.5 },
        horizontal = { x = 0.5 },
        vertical = { y = 0.5 },
    },
    percentage = 0.5,
    color = {
        primary = { 1, 5 },
        secondary = { 1, 5 }
    },
}

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(10)
	end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	ESX.PlayerData = ESX.GetPlayerData()

	index.WeaponData = ESX.GetWeaponList()

	for i = 1, #index.WeaponData, 1 do
		if index.WeaponData[i].name == 'WEAPON_UNARMED' then
			index.WeaponData[i] = nil
		else
			index.WeaponData[i].hash = GetHashKey(index.WeaponData[i].name)
		end
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


Citizen.CreateThread(function()
    while (true) do
        local sleep = 15
        RageUI.IsVisible(mainMenu, function()
			sleep = 4
			PlayerData = ESX.GetPlayerData()
			RageUI.Button('Inventar', description, {RightLabel = "→→→"}, true, {onSelected = function() end}, subMenu2);
            RageUI.Button('Personalien', description, {RightLabel = "→→→"}, true, {onSelected = function() end}, subMenu);
			RageUI.Button('Rechnungen', description, {RightLabel = "→→→"}, true, {onSelected = function() end}, subMenu4);
			if ESX.PlayerData.gang ~= "Ganglos" then
				if index.Maxrank ~= nil then
					if ESX.PlayerData.gangrank == tostring(index.Maxrank) then
						RageUI.Button('Frakmanagement', description, {RightLabel = "→→→"}, true, {onSelected = function() end}, subMenu6);
					end		
				end	
			end
			if PlayerData.job ~= nil and PlayerData.job.grade_name == 'boss' then
				RageUI.Button('Jobmanagement', description, {RightLabel = "→→→"}, true, {onSelected = function() end}, subMenu7);
			end
			if IsPedSittingInAnyVehicle(GetPlayerPed(-1)) then
				 RageUI.Button('Fahrzeug', description, {RightLabel = "→→→"}, true, {onSelected = function() end}, subMenu3);
			end
			RageUI.Button('Einstellungen', description, {RightLabel = "→→→"}, true, {onSelected = function() end}, subMenu5);

        end, function()
        end)
		
		
        --> SubMenu : 
        RageUI.IsVisible(subMenu, function()
			sleep = 4
			PlayerData = ESX.GetPlayerData()
            RageUI.Separator(PlayerData.job.label.." - "..PlayerData.job.grade_label, { RightLabel = "", Color = { HightLightColor = { 0, 155, 0, 150 }, BackgroundColor = { 38, 85, 150, 160 } }}, true);
			RageUI.Separator(ESX.PlayerData.gang.." - "..PlayerData.gangrank, { RightLabel = "", Color = { HightLightColor = { 0, 155, 0, 150 }, BackgroundColor = { 38, 85, 150, 160 } }}, true);
			--RageUI.Separator("Visumsstufe: "..ESX.PlayerData.level.." - Fortschritt: "..ESX.PlayerData.rp.."/"..math.floor(ESX.PlayerData.level*4), { RightLabel = "", Color = { HightLightColor = { 0, 155, 0, 150 }, BackgroundColor = { 38, 85, 150, 160 } }}, true);
			RageUI.Separator("Grundwehrdienst Note: "..ESX.PlayerData.gwd, { RightLabel = "", Color = { HightLightColor = { 0, 155, 0, 150 }, BackgroundColor = { 38, 85, 150, 160 } }}, true);
		for i = 1, #PlayerData.accounts, 1 do
			if PlayerData.accounts[i].name == 'bank' then
            RageUI.Separator("Bankkonto: "..ESX.Math.GroupDigits(PlayerData.accounts[i].money.."$"), { RightLabel = "", Color = { HightLightColor = { 0, 155, 0, 150 }, BackgroundColor = { 0, 155, 0, 150 } }}, true);
			end
		end
            RageUI.List("Geld: " ..ESX.Math.GroupDigits(PlayerData.money).."$", {
				{ Name = "Wegwerfen", Value = 1 },
                { Name = "Geben", Value = 2 },
            }, index.geld, description, {}, true, {
                onListChange = function(Index, Item)
                    index.geld = Index;
                    
                end,
                onSelected = function(Index, Item)
					
					if Index == 2 then
						local post, quantity = CheckQuantity(KeyboardInput('KORIOZ_BOX_AMOUNT', "Menge", '', 8))

						if post then
							local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

							if closestDistance ~= -1 and closestDistance <= 3 then
								local closestPed = GetPlayerPed(closestPlayer)

								if not IsPedSittingInAnyVehicle(closestPed) then
									TriggerServerEvent('esx:giveInventoryItem', GetPlayerServerId(closestPlayer), 'item_money', 'money', quantity)
									RageUI.CloseAll()
								else
									ESX.ShowNotification("Du darfst in keinem Fahrzeug sein")
								end
							else
								ESX.ShowNotification("Keine Person in der Nähe")
							end
						else
							ESX.ShowNotification("Falsche Menge")
						end
					elseif Index == 1 then
						local post, quantity = CheckQuantity(KeyboardInput('KORIOZ_BOX_AMOUNT', "Menge", '', 8))

						if post then
							if not IsPedSittingInAnyVehicle(plyPed) then
								TriggerServerEvent('esx:removeInventoryItem', 'item_money', 'money', quantity)
								RageUI.CloseAll()
							else
								ESX.ShowNotification("Du darfst in keinem Fahrzeug sein")
							end
						else
							ESX.ShowNotification("Falsche Menge")
						end
					end
                end,
            })
		for i = 1, #PlayerData.accounts, 1 do
			if PlayerData.accounts[i].name == 'black_money' then
            RageUI.List("Schwarzgeld: " ..ESX.Math.GroupDigits(PlayerData.accounts[i].money).."$", {
				{ Name = "Wegwerfen", Value = 1 },
                { Name = "Geben", Value = 2 },
            }, index.schwarzgeld, description, {}, true, {
                onListChange = function(Index, Item)
                    index.schwarzgeld = Index;
                    
                end,
                onSelected = function(Index, Item)
					if Index == 2 then
						local post, quantity = CheckQuantity(KeyboardInput('KORIOZ_BOX_AMOUNT', "Menge", '', 8))

						if post then
							local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

							if closestDistance ~= -1 and closestDistance <= 3 then
								local closestPed = GetPlayerPed(closestPlayer)

								if not IsPedSittingInAnyVehicle(closestPed) then
									TriggerServerEvent('esx:giveInventoryItem', GetPlayerServerId(closestPlayer), 'item_account', PlayerData.accounts[i].name, quantity)
									RageUI.CloseAll()
								else
									ESX.ShowNotification("Du darfst in keinem Fahrzeug sein")
								end
							else
								ESX.ShowNotification("Keine Person in der Nähe")
							end
						else
							ESX.ShowNotification("Falsche Menge")
						end
					elseif Index == 1 then
						local post, quantity = CheckQuantity(KeyboardInput('KORIOZ_BOX_AMOUNT', "Menge", '', 8))

						if post then
							if not IsPedSittingInAnyVehicle(plyPed) then
								TriggerServerEvent('esx:removeInventoryItem', 'item_account', PlayerData.accounts[i].name, quantity)
								RageUI.CloseAll()
							else
								ESX.ShowNotification("Du darfst in keinem Fahrzeug sein")
							end
						else
							ESX.ShowNotification("Falsche Menge")
						end
					end
                end,
            })
			end
		end
            RageUI.Separator("Ausweise")
			
            RageUI.List('Personalausweis', {
				{ Name = "Anschauen", Value = 1 },
                { Name = "Zeigen", Value = 2 },
            }, index.perso, description, {}, true, {
                onListChange = function(Index, Item)
                    index.perso = Index;
                    
                end,
                onSelected = function(Index, Item)
                    
					if Index == 2 then
						local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

						if closestDistance ~= -1 and closestDistance <= 3.0 then
							TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(closestPlayer))
						else
							ESX.ShowNotification("Keine Person in der Nähe")
						end
					elseif Index == 1 then
						TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(PlayerId()))
					end
                end,
            })
			
            RageUI.List('Führerschein', {
				{ Name = "Anschauen", Value = 1 },
                { Name = "Zeigen", Value = 2 },
            }, index.schein, description, {}, true, {
                onListChange = function(Index, Item)
                    index.schein = Index;
                    
                end,
                onSelected = function(Index, Item)
                    
					if Index == 2 then
						local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

						if closestDistance ~= -1 and closestDistance <= 3.0 then
							TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(closestPlayer), 'driver')
						else
							ESX.ShowNotification("Keine Person in der Nähe")
						end
					elseif Index == 1 then
						TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(PlayerId()), 'driver')
					end
                end,
            })
			
            RageUI.List('Waffenschein', {
				{ Name = "Anschauen", Value = 1 },
                { Name = "Zeigen", Value = 2 },
				
            }, index.waffenschein, description, {}, true, {
                onListChange = function(Index, Item)
                    index.waffenschein = Index;
                    
                end,
                onSelected = function(Index, Item)
                    
					if Index == 2 then
						local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

						if closestDistance ~= -1 and closestDistance <= 3.0 then
							TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(closestPlayer), 'weapon')
						else
							ESX.ShowNotification("Keine Person in der Nähe")
						end
					elseif Index == 1 then
						TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(PlayerId()), 'weapon')
					end
                end,
            })
            --> your logic here ... 
        end, function() end)
        RageUI.IsVisible(subMenu2, function()
			sleep = 4
			PlayerData = ESX.GetPlayerData()
			RageUI.Separator("Gegenstände")
			for i = 1, #PlayerData.inventory, 1 do
				if PlayerData.inventory[i].count > 0 then
					local invCount = {}
					
					
					RageUI.Button(PlayerData.inventory[i].label.." ("..PlayerData.inventory[i].count..")", description, {}, true, {
						onHovered = function()
							Visual.Subtitle("onHovered", 100)
						end,
						onSelected = function()
							
							--print(ESX.PlayerData.inventory[i].name)
							RageUI.CloseAll()
							TriggerEvent("esx:opendingmenu",(PlayerData.inventory[i]))
						end,
					});		

					
				end
			end
			RageUI.Separator("Waffen")
			plyPed = PlayerPedId()
			for i = 1, #index.WeaponData, 1 do
				if HasPedGotWeapon(plyPed, index.WeaponData[i].hash, false) then
					local ammo = GetAmmoInPedWeapon(plyPed, index.WeaponData[i].hash)			
					RageUI.Button(index.WeaponData[i].label .. ' [' .. ammo .. ']', description, {}, true, {
						onHovered = function()
							Visual.Subtitle("onHovered", 100)
						end,
						onSelected = function()
							
							--print(index.WeaponData[i].name)
							RageUI.CloseAll()
							TriggerEvent("esx:opendingmenu2",(index.WeaponData[i]))
						end,
					});		
				end
			end	
        end, function() end)
        RageUI.IsVisible(subMenu3, function()
			sleep = 4
			plyPed = PlayerPedId()
			RageUI.Button("Motor An/Aus", description, {}, true, {
				onHovered = function()
					Visual.Subtitle("onHovered", 100)
				end,
				onSelected = function()
					if not IsPedSittingInAnyVehicle(plyPed) then
						ESX.ShowNotification("Du sitzt in keinem Fahrzeug")
					elseif IsPedSittingInAnyVehicle(plyPed) then
						local plyVeh = GetVehiclePedIsIn(plyPed, false)

						if GetIsVehicleEngineRunning(plyVeh) then
							SetVehicleEngineOn(plyVeh, false, false, true)
							SetVehicleUndriveable(plyVeh, true)
						elseif not GetIsVehicleEngineRunning(plyVeh) then
							SetVehicleEngineOn(plyVeh, true, false, true)
							SetVehicleUndriveable(plyVeh, false)
						end
					end
				end,
			});			

            RageUI.List('Türen', {
				{ Name = "Vorne Links", Value = 1 },
                { Name = "Vorne Rechts", Value = 2 },
				{ Name = "Hinten Links", Value = 3 },
				{ Name = "Hinten Rechts", Value = 4 },
				
				
            }, index.Doors, description, {}, true, {
                onListChange = function(Index, Item)
                    index.Doors = Index;
                    
                end,
                onSelected = function(Index, Item)
                    
					if not IsPedSittingInAnyVehicle(plyPed) then
						ESX.ShowNotification("Du bist in keinem Fahrzeug")
					elseif IsPedSittingInAnyVehicle(plyPed) then
						local plyVeh = GetVehiclePedIsIn(plyPed, false)

						if Index == 1 then
							if not index.DoorState.FrontLeft then
								index.DoorState.FrontLeft = true
								SetVehicleDoorOpen(plyVeh, 0, false, false)
							elseif index.DoorState.FrontLeft then
								index.DoorState.FrontLeft = false
								SetVehicleDoorShut(plyVeh, 0, false, false)
							end
						elseif Index == 2 then
							if not index.DoorState.FrontRight then
								index.DoorState.FrontRight = true
								SetVehicleDoorOpen(plyVeh, 1, false, false)
							elseif index.DoorState.FrontRight then
								index.DoorState.FrontRight = false
								SetVehicleDoorShut(plyVeh, 1, false, false)
							end
						elseif Index == 3 then
							if not index.DoorState.BackLeft then
								index.DoorState.BackLeft = true
								SetVehicleDoorOpen(plyVeh, 2, false, false)
							elseif index.DoorState.BackLeft then
								index.DoorState.BackLeft = false
								SetVehicleDoorShut(plyVeh, 2, false, false)
							end
						elseif Index == 4 then
							if not index.DoorState.BackRight then
								index.DoorState.BackRight = true
								SetVehicleDoorOpen(plyVeh, 3, false, false)
							elseif index.DoorState.BackRight then
								index.DoorState.BackRight = false
								SetVehicleDoorShut(plyVeh, 3, false, false)
							end
						end
					end
                end,
            })

			RageUI.Button("Motorhaube", description, {}, true, {
				onHovered = function()
					Visual.Subtitle("onHovered", 100)
				end,
				onSelected = function()
					if not IsPedSittingInAnyVehicle(plyPed) then
						ESX.ShowNotification("Du bist in keinem Fahrzeug")
					elseif IsPedSittingInAnyVehicle(plyPed) then
						local plyVeh = GetVehiclePedIsIn(plyPed, false)

						if not index.DoorState.Hood then
							index.DoorState.Hood = true
							SetVehicleDoorOpen(plyVeh, 4, false, false)
						elseif index.DoorState.Hood then
							index.DoorState.Hood = false
							SetVehicleDoorShut(plyVeh, 4, false, false)
						end
					end
				end,
			});	
			
			RageUI.Button("Kofferraum", description, {}, true, {
				onHovered = function()
					Visual.Subtitle("onHovered", 100)
				end,
				onSelected = function()
					if not IsPedSittingInAnyVehicle(plyPed) then
						ESX.ShowNotification("Du bist in keinem Fahrzeug")
					elseif IsPedSittingInAnyVehicle(plyPed) then
						local plyVeh = GetVehiclePedIsIn(plyPed, false)

						if not index.DoorState.Trunk then
							index.DoorState.Trunk = true
							SetVehicleDoorOpen(plyVeh, 5, false, false)
						elseif index.DoorState.Trunk then
							index.DoorState.Trunk = false
							SetVehicleDoorShut(plyVeh, 5, false, false)
						end
					end
				end,
			});	
			
			RageUI.Separator("Fahrzeug Weitergabe")
			RageUI.Button("Auto Schlüssel weitergeben", description, {}, true, {
				onSelected = function()
					giveCarKeys()
				end,
			});				
			
        end, function() end)
        RageUI.IsVisible(subMenu4, function()
			sleep = 4
			plyPed = PlayerPedId()	
			for i = 1, #index.BillData, 1 do
				RageUI.Button(index.BillData[i].label, description, {RightLabel = '$' .. ESX.Math.GroupDigits(index.BillData[i].amount)}, true, {
					onSelected = function()
						ESX.TriggerServerCallback('esx_nwdoanefleanmfeoifnaofebngoengao:payBill', function()
							ESX.TriggerServerCallback('Jason:GetRechnungen', function(bills)
								index.BillData = bills
							end)
						end, index.BillData[i].id)
					end,
				});
			end			
        end, function() end)
        RageUI.IsVisible(subMenu5, function()
			sleep = 4
			plyPed = PlayerPedId()		
            RageUI.Checkbox('Kinomodus An/Aus', description, index.checkbox, {}, {
                onChecked = function()
                    Visual.Subtitle("onChecked", 100)
                    --mainMenu.TitleFont = 7
                    TriggerEvent('esx-hud:Hudaus')
                    kino = true
                    --Fotze()
                    ExecuteCommand("cinematica") 
                end,
                onUnChecked = function()
                    Visual.Subtitle("onUnChecked", 100)
                    --mainMenu.TitleFont = 1
                    TriggerEvent('esx-hud:Hudan')
                    kino = false
                    --Fotze()
                    ExecuteCommand("cinematica") 
                end,
                onSelected = function(Index)
                    index.checkbox = Index
                    --- Logic on selected items
                end
            })			
			 RageUI.Separator("~TASTATURBELEGUNGEN~")
			  RageUI.Separator("T = Chat | F1 = Handy | F2 = AllMenu")
			   RageUI.Separator("X = Aktionsmenu | Z = Animationsmenu")
			    RageUI.Separator("Y = Sprachreichweite | N = Funktaste")
        end, function() end)
			RageUI.IsVisible(subMenu6, function()
				sleep = 4
				plyPed = PlayerPedId()		
				RageUI.Separator("Allgemein")
				RageUI.Button("Person vor mir", description, {RightLabel = "→Einladen←"}, true, {
					onSelected = function()
						local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

						if closestPlayer == -1 or closestDistance > 3.0 then
							ESX.ShowNotification("Keine Person in der Nähe")
						else
							TriggerServerEvent("Craniax_Fraktion:Einladen",GetPlayerServerId(closestPlayer))
						end
					end,
				});			
				RageUI.Separator("Personalverwaltung")
				RageUI.List('Person vor mir', {
					{ Name = "Befördern", Value = 1 },
					{ Name = "Degradieren", Value = 2 },
				}, index.frakdings, description, {}, true, {
					onListChange = function(Index, Item)
						index.frakdings = Index;
					end,
					onSelected = function(Index, Item)
						
						if Index == 1 then
							local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

							if closestPlayer == -1 or closestDistance > 3.0 then
								ESX.ShowNotification("Keine Person in der Nähe")
							else
								TriggerServerEvent("Craniax_Fraktion:Promote",GetPlayerServerId(closestPlayer))
							end
						elseif Index == 2 then
							local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

							if closestPlayer == -1 or closestDistance > 3.0 then
								ESX.ShowNotification("Keine Person in der Nähe")
							else
								TriggerServerEvent("Craniax_Fraktion:Degradieren",GetPlayerServerId(closestPlayer))
							end
						end
					end,
				})	
				RageUI.Button("Person vor mir", description, {RightLabel = "→Rauswerfen←"}, true, {
					onSelected = function()
						local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

						if closestPlayer == -1 or closestDistance > 3.0 then
							ESX.ShowNotification("Keine Person in der Nähe")
						else
							TriggerServerEvent("Craniax_Fraktion:Feuern",GetPlayerServerId(closestPlayer))
						end
					end,
				});
			end, function() end)
        RageUI.IsVisible(subMenu7, function()
			sleep = 4
				plyPed = PlayerPedId()		
				RageUI.Separator("Allgemein")
				RageUI.Button("Person vor mir", description, {RightLabel = "→Einladen←"}, true, {
					onSelected = function()
						local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

						if closestPlayer == -1 or closestDistance > 3.0 then
							ESX.ShowNotification("Keine Person in der Nähe")
						else
							TriggerServerEvent("Craniax_Fraktion:jobEinladen",GetPlayerServerId(closestPlayer),ESX.PlayerData.job.name,0)
						end
					end,
				});			
				RageUI.Separator("Personalverwaltung")
				RageUI.List('Person vor mir', {
					{ Name = "Befördern", Value = 1 },
					{ Name = "Degradieren", Value = 2 },
				}, index.jobdings, description, {}, true, {
					onListChange = function(Index, Item)
						index.jobdings = Index;
					end,
					onSelected = function(Index, Item)
						
						if Index == 1 then
							local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

							if closestPlayer == -1 or closestDistance > 3.0 then
								ESX.ShowNotification("Keine Person in der Nähe")
							else
								TriggerServerEvent("Craniax_Fraktion:jobPromote",GetPlayerServerId(closestPlayer))
							end
						elseif Index == 2 then
							local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

							if closestPlayer == -1 or closestDistance > 3.0 then
								ESX.ShowNotification("Keine Person in der Nähe")
							else
								TriggerServerEvent("Craniax_Fraktion:jobDegradieren",GetPlayerServerId(closestPlayer))
							end
						end
					end,
				})	
				RageUI.Button("Person vor mir", description, {RightLabel = "→Rauswerfen←"}, true, {
					onSelected = function()
						local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

						if closestPlayer == -1 or closestDistance > 3.0 then
							ESX.ShowNotification("Keine Person in der Nähe")
						else
							TriggerServerEvent("Craniax_Fraktion:jobFeuern",GetPlayerServerId(closestPlayer))
						end
					end,
				});		
        end, function() end)
		Citizen.Wait(sleep)
    end
end)

function Fotze()
	if kino then -- hide the hud elements.
		DisplayRadar(false)
	else
		DisplayRadar(true)
	end
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

--[[Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		if IsControlJustPressed(0, 289) then
			ESX.TriggerServerCallback('Jason:GetRechnungen', function(bills)
				ESX.TriggerServerCallback('Craniax_Fraktion:getMaxRank', function(maxrank)
					index.BillData = bills
					index.Maxrank = maxrank
				--	print(maxrank)
					--print(ESX.PlayerData.gang)
					--print(ESX.PlayerData.gangrank)
					RageUI.Visible(mainMenu, not RageUI.Visible(mainMenu))
				end,ESX.PlayerData.gang)
			end)
		end
	end
end)--]]
RegisterCommand('inv',function()
	ESX.TriggerServerCallback('Jason:GetRechnungen', function(bills)
		ESX.TriggerServerCallback('Craniax_Fraktion:getMaxRank', function(maxrank)
			index.BillData = bills
			index.Maxrank = maxrank
		--	print(maxrank)
			--print(ESX.PlayerData.gang)
			--print(ESX.PlayerData.gangrank)
			RageUI.Visible(mainMenu, not RageUI.Visible(mainMenu))
		end,ESX.PlayerData.gang)
	end)
end)

RegisterKeyMapping('inv','Inventar öffnen','keyboard','F2')


Citizen.CreateThread( function()
	while true do
		Citizen.Wait(500)
		ResetPlayerStamina(PlayerId())
	end
end)

--==--==--==--==--
--Config--
--==--==--==--==--

CinematicCamCommand = "cinematica" -- [[The name of the command called to toggle the cinematic cam]]

CinematicCamMaxHeight = 0.2 -- [[The height of the rects. Keep below 1 and keep as a float however I recommend you keep it as it is as this is the best height I could find]]


--DO NOT CHANGE BELOW THIS LINE--


--==--==--==--==--
--Variables--
--==--==--==--==--

CinematicCamBool = false

w = 0

--==--==--==--==--
--Command--
--==--==--==--==--

RegisterCommand(CinematicCamCommand, function()
    CinematicCamBool = not CinematicCamBool
    CinematicCamDisplay(CinematicCamBool)
end)

--==--==--==--==--
--Main Thread--
--==--==--==--==--

Citizen.CreateThread(function() -- [[Requests the minimap scaleform and actually calls the rect function allong with the hud components function.]]

    minimap = RequestScaleformMovie("minimap")

    if not HasScaleformMovieLoaded(minimap) then
        RequestScaleformMovie(minimap)
        while not HasScaleformMovieLoaded(minimap) do 
            Wait(1)
        end
    end

    while true do
        Citizen.Wait(1)
        if w > 0 then
            DrawRects()
        end
        if CinematicCamBool then
            DESTROYHudComponents()
        end
    end
end)

--==--==--==--==--
--Functions--
--==--==--==--==--

function DESTROYHudComponents() -- [[Get rid of all active hud components.]]
    for i = 0, 22, 1 do
        if IsHudComponentActive(i) then
            HideHudComponentThisFrame(i)
        end
    end
end

function DrawRects() -- [[Draw the Black Rects]]
    DrawRect(0.0, 0.0, 2.0, w, 0, 0, 0, 255)
    DrawRect(0.0, 1.0, 2.0, w, 0, 0, 0, 255)
end

function DisplayHealthArmour(int) -- [[Thanks to GlitchDetector for this function.]]
    BeginScaleformMovieMethod(minimap, "SETUP_HEALTH_ARMOUR")
    ScaleformMovieMethodAddParamInt(int)
    EndScaleformMovieMethod()
end

function CinematicCamDisplay(bool) -- [[Handles Displaying Radar, Body Armour and the rects themselves.]]
    SetRadarBigmapEnabled(true, false)
    Wait(0)
    SetRadarBigmapEnabled(false, false)
    if bool then
        DisplayRadar(false)
        DisplayHealthArmour(3)
        for i = 0, CinematicCamMaxHeight, 0.01 do 
            Wait(10)
            w = i
        end
    else
        DisplayRadar(true)
        DisplayHealthArmour(0)
        for i = CinematicCamMaxHeight, 0, -0.02 do
            Wait(10)
            w = i
        end 
    end
end    


function giveCarKeys()
	local playerPed = GetPlayerPed(-1)
	local Besitzer = PlayerId()
	local coords    = GetEntityCoords(playerPed)

	if IsPedInAnyVehicle(playerPed,  false) then
        vehicle = GetVehiclePedIsIn(playerPed, false)			
    else
        vehicle = GetClosestVehicle(coords.x, coords.y, coords.z, 7.0, 0, 70)
    end

	local plate = GetVehicleNumberPlateText(vehicle)
	local vehicleProps = ESX.Game.GetVehicleProperties(vehicle)


	ESX.TriggerServerCallback('esx_givecarkeys:requestPlayerCars', function(isOwnedVehicle)

		if isOwnedVehicle then

		local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

		if closestPlayer == -1 or closestDistance > 3.0 then
		  ESX.ShowNotification('~r~Kein Spieler gefunden')
		else
			ESX.TriggerServerCallback('esx_givecarkeys:setVehicleOwnedPlayerId', function(cb)
				if cb == true then
					TriggerEvent('scarface_notify', "#ff0000", "Information", "Du hast den Schlüssel von folgendenem Kennzeichen übergeben: " ..vehicleProps.plate)
				end
			end, GetPlayerServerId(closestPlayer),vehicleProps)
		end

		end
	end, GetVehicleNumberPlateText(vehicle))
end

RegisterNetEvent("lacosteisteinladyboy")
AddEventHandler("lacosteisteinladyboy", function()
	giveCarKeys()
end)
--==--==--==--==--
--END :(--
--==--==--==--==--