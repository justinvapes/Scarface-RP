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

-- CONFIG

local vSyncPogoda = false 		-- ustaw na true jeśli korzystasz z vSync i wykonałeś/aś instrukcje w ReadMe.txt;

-- ZMIENNE

local prox = 10.0
local isTalking = false
local ZablokujPozycje = false
local wszedlDoGry = false
local DuzaMapaPojazd = false
local pokazalHud = false
local przesunalHud = false
local oczekiwanie = 500

local inVeh = false
local distance = 0
local vehPlate

local x = 0.01135
local y = 0.002
hasKM = 0
showKM = 0

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(oczekiwanie)
		local playerPed = GetPlayerPed(-1)
		if IsPedInAnyVehicle(playerPed, true) then
			oczekiwanie = 150
			local playerVeh = GetVehiclePedIsIn(playerPed, false)
			if DuzaMapaPojazd == false then
				if pokazalHud == false then
					pokazalHud = true
					SendNUIMessage({action = "toggleCar", show = true})
				end
				SendNUIMessage({action = "przesunHud", show = true})
			else
				SendNUIMessage({action = "przesunHudMapa", show = true})		
			end
			fuel = math.floor(GetVehicleFuelLevel(playerVeh)+0.0)		
			SendNUIMessage({action = "updateGas", key = "gas", value = fuel})
			if not DuzaMapaPojazd then

			end
			lokalizacja = false
		else
			oczekiwanie = 500
			if pokazalHud == true then
				pokazalHud = false
				SendNUIMessage({action = "toggleCar", show = false})
			end
			if not ZablokujPozycje then
				if przesunalHud == false then
					przesunalHud = true
					SendNUIMessage({action = "przesunHud", show = true})
				end
			end
		end
	end
end)

function PrzelaczRadar(on)
	if on and not ZablokujPozycje then
		if przesunalHud == false then
			przesunalHud = true
			SendNUIMessage({action = "przesunHud", show = true})
		end
		
	elseif not ZablokujPozycje then
		if przesunalHud == true then
			przesunalHud = false
			SendNUIMessage({action = "przesunHud", show = false})
		end
	end
end

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(500)
		local playerPed = PlayerPedId()
		if IsPedInAnyVehicle(playerPed, false) then
			local vehicle = GetVehiclePedIsIn(playerPed, false)
			local lockStatus = GetVehicleDoorLockStatus(vehicle)

			if GetIsVehicleEngineRunning(vehicle) == false then
				SendNUIMessage({action = "engineSwitch", status = false})
			else
				SendNUIMessage({action = "engineSwitch", status = true})
			end
			if (lockStatus == 0 or lockStatus == 1) then
				SendNUIMessage({action = "lockSwitch", status = true})
			elseif lockstatus ~= 0 and lockstatus ~= 1 then
				SendNUIMessage({action = "lockSwitch", status = false})
			end
		end
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(100)
		local Ped = GetPlayerPed(-1)
		if(IsPedInAnyVehicle(Ped, false)) then
			local PedCar = GetVehiclePedIsIn(Ped, false)
			carSpeed = math.ceil(GetEntitySpeed(PedCar) * 2.0)
			SendNUIMessage({
				showhud = true,
				speed = carSpeed
			})
		end
	end
end)

local vehicleCruiser
local vehiclesCars = {0,1,2,3,4,5,6,7,8,9,10,11,12,17,18,19,20};

function has_value(tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end

    return false
end

RegisterCommand('tempomat',function()
	local player = GetPlayerPed(-1)
	local vehicle = GetVehiclePedIsIn(player, false)
	local vehicleClass = GetVehicleClass(vehicle)
	if GetPedInVehicleSeat(vehicle, -1) == player and (has_value(vehiclesCars, vehicleClass) == true) then
		
		local vehicleSpeedSource = GetEntitySpeed(vehicle)

		if vehicleCruiser == 'on' then
			vehicleCruiser = 'off'
			SetEntityMaxSpeed(vehicle,98.0)

			SendNUIMessage({action = "tempomat", show = false})
			
		else
			vehicleCruiser = 'on'
			SetEntityMaxSpeed(vehicle, vehicleSpeedSource)
			SendNUIMessage({action = "tempomat", show = true})
		end
	end
end)

RegisterKeyMapping('tempomat','Tempomat an/aus','Keyboard','CAPITAL')

--[[Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		local player = GetPlayerPed(-1)
		local vehicle = GetVehiclePedIsIn(player, false)
		local vehicleClass = GetVehicleClass(vehicle)
		if IsControlJustPressed(1, 137) and GetPedInVehicleSeat(vehicle, -1) == player and (has_value(vehiclesCars, vehicleClass) == true) then
			
			local vehicleSpeedSource = GetEntitySpeed(vehicle)

			if vehicleCruiser == 'on' then
				vehicleCruiser = 'off'
				SetEntityMaxSpeed(vehicle, 98.0)
				SendNUIMessage({action = "tempomat", show = false})
				
			else
				vehicleCruiser = 'on'
				SetEntityMaxSpeed(vehicle, vehicleSpeedSource)
				SendNUIMessage({action = "tempomat", show = true})
			end
		end
    end
end)]]--

RegisterNetEvent('welldone_carhud:UstawPogode')
AddEventHandler('welldone_carhud:UstawPogode', function(pogoda)
    pogodaHash = pogoda
end)
  
  displayHud = true
	  
  function round(num, numDecimalPlaces)
	local mult = 10^(numDecimalPlaces or 0)
	return math.floor(num * mult + 0.5) / mult
  end