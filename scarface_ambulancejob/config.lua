Config                            = {}

Config.DrawDistance               = 100.0

Config.Marker                     = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false }

Config.ReviveReward               = 2500  -- revive reward, set to 0 if you don't want it enabled
Config.AntiCombatLog              = true -- enable anti-combat logging?
Config.LoadIpl                    = false -- disable if you're using fivem-ipl or other IPL loaders

Config.Locale                     = 'en'

local second = 1000
local minute = 60 * second

Config.EarlyRespawnTimer          = 5 * minute  -- Time til respawn is available
Config.BleedoutTimer              = 7 * minute -- Time til the player bleeds out

Config.EnablePlayerManagement     = true

Config.RemoveWeaponsAfterRPDeath  = true
Config.RemoveCashAfterRPDeath     = true
Config.RemoveItemsAfterRPDeath    = true

Config.EarlyRespawnFine           = false
Config.EarlyRespawnFineAmount     = 5000

Config.RespawnPoint = {

	Krankenhaus = {
		Pos	= { x = 298.25, y = -585.07, z = 44.26, heading = 74 },
		Type = -1

	}
}

Config.Hospitals = {

	CentralLosSantos = {

		Blip = {
			coords = vector3(-501.09,-333.07,42.32),
			sprite = 61,
			scale  = 0.8,
			color  = 2
		},

		AmbulanceActions = {
			vector3(-443,-309,35),
			vector3(-438,-306,35)
		},

		Pharmacies = {
			vector3(-491.0,-339.0,42.0)
		},

		Vehicles = {
			{
				Spawner = vector3(-428,-348,24),
				InsideShop = vector3(-437.32, -346.31, 24.23),
				Marker = { type = 36, x = 1.0, y = 1.0, z = 1.0, r = 100, g = 50, b = 200, a = 100, rotate = true },
				SpawnPoints = {
					{ coords = vector3(-437.32, -346.31, 24.23), heading = 108.61, radius = 4.0 }
				}
			}
		},

		Helicopters = {
			{
				Spawner = vector3(-455.92,-307.66,78.26),
				InsideShop = vector3(-426.2, -353.59, 33.11),
				Marker = { type = 34, x = 1.5, y = 1.5, z = 1.5, r = 100, g = 150, b = 150, a = 100, rotate = true },
				SpawnPoints = {
					{ coords = vector3(-458.77, -287.85, 78.79), heading = 173.9, radius = 10.0 }
				}
			}
		},
	}
}

Config.AuthorizedVehicles = {

	ambulance = {
		{ model = 'ambulance', label = 'Krankenwagen', price = 1000},
		{ model = 'ambo', label = 'Krankenwagen Nr. 2', price = 1000},
    },

	doctor = {
		{ model = 'ambulance', label = 'Krankenwagen', price = 1000},
		{ model = 'ambo', label = 'Krankenwagen Nr. 2', price = 1000},
		{ model = 'dodgeEMS', label = 'Medic Dodge', price = 1000}
	},

	chief_doctor = {
		{ model = 'ambulance', label = 'Krankenwagen', price = 1000},
		{ model = 'ambo', label = 'Krankenwagen Nr. 2', price = 1000},
		{ model = 'dodgeEMS', label = 'Medic Dodge', price = 1000},
		{ model = 'lsfdfpiu', label = 'Medic SUV', price = 1000}
	},

	boss = {
		{ model = 'ambulance', label = 'Krankenwagen', price = 1000},
		{ model = 'ambo', label = 'Krankenwagen Nr. 2', price = 1000},
		{ model = 'dodgeEMS', label = 'Medic Dodge', price = 1000},
		{ model = 'lsfdfpiu', label = 'Medic SUV', price = 1000}
	}

}

Config.AuthorizedHelicopters = {

	ambulance = {},

	doctor = {
		{ model = 'as332', label = 'Medic Helikopter', price = 1000},
		{ model = 'uh1mash', label = 'Medic Helikopter', price = 1000}
	},

	chief_doctor = {
		{ model = 'as332', label = 'Medic Helikopter', price = 1000},
		{ model = 'uh1mash', label = 'Medic Helikopter', price = 1000}
	},

	boss = {
		{ model = 'as332', label = 'Medic Helikopter', price = 1000},
		{ model = 'uh1mash', label = 'Medic Helikopter', price = 1000}
	}

}
