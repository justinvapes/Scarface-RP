Config                            = {}

Config.DrawDistance               = 10.0 -- How close do you need to be for the markers to be drawn (in GTA units).
Config.MarkerType                 = {Cloakrooms = 20, Armories = 21, BossActions = 22, Vehicles = 36, Helicopters = 34}
Config.MarkerSize                 = {x = 1.5, y = 1.5, z = 0.5}
Config.MarkerColor                = {r = 50, g = 50, b = 204}

Config.EnablePlayerManagement     = true -- Enable if you want society managing.
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- Enable if you're using esx_identity.
Config.EnableLicenses             = false -- Enable if you're using esx_license.

Config.EnableHandcuffTimer        = true -- Enable handcuff timer? will unrestrain player after the time ends.
Config.HandcuffTimer              = 10 * 60000 -- 10 minutes.

Config.EnableJobBlip              = false -- Enable blips for cops on duty, requires esx_society.
Config.EnableCustomPeds           = false -- Enable custom peds in cloak room? See Config.CustomPeds below to customize peds.

Config.EnableESXService           = false -- Enable esx service?
Config.MaxInService               = -1 -- How much people can be in service at once?

Config.Locale                     = 'de'

Config.ArmyStations = {

	Army = {

		Blip = {
			Coords  = vector3(-2358.62, 3254.3, 32.81),
			Sprite  = 76,
			Display = 4,
			Scale   = 1.0,
			Colour  = 52
		},

		Cloakrooms = {
			vector3(-2358.62, 3254.3, 32.81)
		},

		Armories = {
			vector3(-2357.62, 3256.14, 32.81)
		},

		Vehicles = {
			{
				Spawner = vector3(-2322.95, 3259.07, 33.08),
				InsideShop = vector3(-2326.95, 3253.31, 32.4),
				SpawnPoints = {
					{coords = vector3(-2326.95, 3253.31, 32.4), heading = 58.37, radius = 6.0}
				}
			}
		},

		Boats = {
			{
				Spawner = vector3(1732.66, 3985.7, 31.97),
				InsideShop = vector3(1732.1, 3988.4, 30.4),
				SpawnPoints = {
					{coords = vector3(1732.1, 3988.4, 30.4), heading = 290.0, radius = 10.0}
				}
			},
			{
				Spawner = vector3(3867.04, 4463.74, 2.72),
				InsideShop = vector3(3870.19, 4464.25, 0.15),
				SpawnPoints = {
					{coords = vector3(3870.19, 4464.25, 0.15), heading = 179.5, radius = 10.0}
				}
			}
		},

		Helicopters = {
			{
				Spawner = vector3(453.88, -985.4, 43.69),
				InsideShop = vector3(448.75, -981.13, 44.08),
				SpawnPoints = {
					{coords = vector3(448.75, -981.13, 44.08), heading = 269.78, radius = 10.0}
				}
			},
			{
				Spawner = vector3(-2185.46, 3189.38, 32.81),
				InsideShop = vector3(-2185.58, 3174.47, 33.19),
				SpawnPoints = {
					{coords = vector3(-2185.58, 3174.47, 33.19), heading = 329.58, radius = 10.0}
				}
			}
		},

		BossActions = {
			vector3(-2348.55, 3270.05, 32.81)
		}

	}

}

Config.ShopItems ={

    {label = ('Schutzweste'), value = 'bulletproof', price = 0, maxi = 3},
	{label = ('Medikit'), value = 'medikit', price = 0, maxi = 3},
	{label = ('Magazin'), value = 'clip', price = 0, maxi = 10},
	{label = ('Seile'), value = 'cuffs', price = 0, maxi = 5},
    {label = ('Handy'), value = 'phone', price = 0, maxi = 1}

}

Config.AuthorizedWeapons = {
	rang0 = {
		{weapon = 'GADGET_PARACHUTE', price = 1},
		{weapon = 'WEAPON_FLASHLIGHT', price = 1},
		{weapon = 'WEAPON_NIGHTSTICK', price = 1},
		{weapon = 'WEAPON_STUNGUN', price = 1},
		{weapon = 'WEAPON_COMBATPISTOL', components = {0, 0, 0, 0, nil}, price = 1}
	},

	rang1 = {
		{weapon = 'GADGET_PARACHUTE', price = 1},
		{weapon = 'WEAPON_FLASHLIGHT', price = 1},
		{weapon = 'WEAPON_NIGHTSTICK', price = 1},
		{weapon = 'WEAPON_STUNGUN', price = 1},
		{weapon = 'WEAPON_COMBATPISTOL', components = {0, 0, 0, 0, nil}, price = 1},
		{weapon = 'WEAPON_SMG', components = {0, 0, 0, 0, 0, 0, nil}, price = 1}
	},

	rang2 = {
		{weapon = 'GADGET_PARACHUTE', price = 1},
		{weapon = 'WEAPON_FLASHLIGHT', price = 1},
		{weapon = 'WEAPON_NIGHTSTICK', price = 1},
		{weapon = 'WEAPON_STUNGUN', price = 1},
		{weapon = 'WEAPON_COMBATPISTOL', components = {0, 0, 0, 0, nil}, price = 1},
		{weapon = 'WEAPON_SMG', components = {0, 0, 0, 0, 0, 0, nil}, price = 1}
	},

	rang3 = {
		{weapon = 'GADGET_PARACHUTE', price = 1},
		{weapon = 'WEAPON_FLASHLIGHT', price = 1},
		{weapon = 'WEAPON_NIGHTSTICK', price = 1},
		{weapon = 'WEAPON_STUNGUN', price = 1},
		{weapon = 'WEAPON_COMBATPISTOL', components = {0, 0, 0, 0, nil}, price = 1},
		{weapon = 'WEAPON_SMG', components = {0, 0, 0, 0, 0, 0, nil}, price = 1}
	},

	rang4 = {
		{weapon = 'GADGET_PARACHUTE', price = 1},
		{weapon = 'WEAPON_FLASHLIGHT', price = 1},
		{weapon = 'WEAPON_NIGHTSTICK', price = 1},
		{weapon = 'WEAPON_STUNGUN', price = 1},
		{weapon = 'WEAPON_COMBATPISTOL', components = {0, 0, 0, 0, nil}, price = 1},
		{weapon = 'WEAPON_SMG', components = {0, 0, 0, 0, 0, 0, nil}, price = 1}
	},

	rang5 = {
		{weapon = 'GADGET_PARACHUTE', price = 1},
		{weapon = 'WEAPON_FLASHLIGHT', price = 1},
		{weapon = 'WEAPON_NIGHTSTICK', price = 1},
		{weapon = 'WEAPON_STUNGUN', price = 1},
		{weapon = 'WEAPON_COMBATPISTOL', components = {0, 0, 0, 0, nil}, price = 1},
		{weapon = 'WEAPON_SMG', components = {0, 0, 0, 0, 0, 0, nil}, price = 1},
		{weapon = 'WEAPON_ADVANCEDRIFLE', components = {0, 0, 0, 0, 0, nil}, price = 1}
	},

	rang6 = {
		{weapon = 'GADGET_PARACHUTE', price = 1},
		{weapon = 'WEAPON_FLASHLIGHT', price = 1},
		{weapon = 'WEAPON_NIGHTSTICK', price = 1},
		{weapon = 'WEAPON_STUNGUN', price = 1},
		{weapon = 'WEAPON_COMBATPISTOL', components = {0, 0, 0, 0, nil}, price = 1},
		{weapon = 'WEAPON_SMG', components = {0, 0, 0, 0, 0, 0, nil}, price = 1},
		{weapon = 'WEAPON_ADVANCEDRIFLE', components = {0, 0, 0, 0, 0, nil}, price = 1}
	},

	rang7 = {
		{weapon = 'GADGET_PARACHUTE', price = 1},
		{weapon = 'WEAPON_FLASHLIGHT', price = 1},
		{weapon = 'WEAPON_NIGHTSTICK', price = 1},
		{weapon = 'WEAPON_STUNGUN', price = 1},
		{weapon = 'WEAPON_COMBATPISTOL', components = {0, 0, 0, 0, nil}, price = 1},
		{weapon = 'WEAPON_SMG', components = {0, 0, 0, 0, 0, 0, nil}, price = 1},
		{weapon = 'WEAPON_ADVANCEDRIFLE', components = {0, 0, 0, 0, 0, nil}, price = 1},
		{weapon = 'WEAPON_CARBINERIFLE', components = {0, 0, 0, 0, 0, 0, nil}, price = 1}
	},

	rang8 = {
		{weapon = 'GADGET_PARACHUTE', price = 1},
		{weapon = 'WEAPON_FLASHLIGHT', price = 1},
		{weapon = 'WEAPON_NIGHTSTICK', price = 1},
		{weapon = 'WEAPON_STUNGUN', price = 1},
		{weapon = 'WEAPON_COMBATPISTOL', components = {0, 0, 0, 0, nil}, price = 1},
		{weapon = 'WEAPON_SMG', components = {0, 0, 0, 0, 0, 0, nil}, price = 1},
		{weapon = 'WEAPON_ADVANCEDRIFLE', components = {0, 0, 0, 0, 0, nil}, price = 1},
		{weapon = 'WEAPON_CARBINERIFLE', components = {0, 0, 0, 0, 0, 0, nil}, price = 1}
	},

	rang9 = {
		{weapon = 'GADGET_PARACHUTE', price = 1},
		{weapon = 'WEAPON_FLASHLIGHT', price = 1},
		{weapon = 'WEAPON_NIGHTSTICK', price = 1},
		{weapon = 'WEAPON_STUNGUN', price = 1},
		{weapon = 'WEAPON_COMBATPISTOL', components = {0, 0, 0, 0, nil}, price = 1},
		{weapon = 'WEAPON_SMG', components = {0, 0, 0, 0, 0, 0, nil}, price = 1},
		{weapon = 'WEAPON_ADVANCEDRIFLE', components = {0, 0, 0, 0, 0, nil}, price = 1},
		{weapon = 'WEAPON_CARBINERIFLE', components = {0, 0, 0, 0, 0, 0, nil}, price = 1}
	},

	boss = {
		{weapon = 'GADGET_PARACHUTE', price = 1},
		{weapon = 'WEAPON_FLASHLIGHT', price = 1},
		{weapon = 'WEAPON_NIGHTSTICK', price = 1},
		{weapon = 'WEAPON_STUNGUN', price = 1},
		{weapon = 'WEAPON_COMBATPISTOL', components = {0, 0, 0, 0, nil}, price = 1},
		{weapon = 'WEAPON_SMG', components = {0, 0, 0, 0, 0, 0, nil}, price = 1},
		{weapon = 'WEAPON_ADVANCEDRIFLE', components = {0, 0, 0, 0, 0, nil}, price = 1},
		{weapon = 'WEAPON_CARBINERIFLE', components = {0, 0, 0, 0, 0, 0, nil}, price = 1},
		{weapon = 'WEAPON_SPECIALCARBINE', components = {0, 0, 0, 0, 0, 0, nil}, price = 1}
	}
}

Config.AuthorizedVehicles = {
	car = {
		rang0 = {},

		rang1 = {
			{ model = 'polschafter3', label = 'Schafter', price = 1 }
		},

		rang2 = {
			{ model = 'polschafter3', label = 'Schafter', price = 1 },
			{ model = 'crusader', label = 'Crusader', price = 1 },
			{ model = 'dune', label = 'Dune', price = 1 }
		},

		rang3 = {
			{ model = 'polschafter3', label = 'Schafter', price = 1 },
			{ model = 'crusader', label = 'Crusader', price = 1 },
			{ model = 'dune', label = 'Dune', price = 1 }
		},

		rang4 = {
			{ model = 'polschafter3', label = 'Schafter', price = 1 },
			{ model = 'crusader', label = 'Crusader', price = 1 },
			{ model = 'dune', label = 'Dune', price = 1 },
			{ model = 'mesa3', label = 'Mesa', price = 1 },
			{ model = 'sanchez', label = 'Sanchez', price = 1 }
		},

		rang5 = {
			{ model = 'polschafter3', label = 'Schafter', price = 1 },
			{ model = 'crusader', label = 'Crusader', price = 1 },
			{ model = 'dune', label = 'Dune', price = 1 },
			{ model = 'mesa3', label = 'Mesa', price = 1 },
			{ model = 'sanchez', label = 'Sanchez', price = 1 },
			{ model = 'pbus2', label = 'Gefängnisbus', price = 1 }
		},

		rang6 = {
			{ model = 'polschafter3', label = 'Schafter', price = 1 },
			{ model = 'crusader', label = 'Crusader', price = 1 },
			{ model = 'dune', label = 'Dune', price = 1 },
			{ model = 'mesa3', label = 'Mesa', price = 1 },
			{ model = 'sanchez', label = 'Sanchez', price = 1 },
			{ model = 'pbus2', label = 'Gefängnisbus', price = 1 },
			{ model = 'rmodgt63police', label = 'GT63', price = 1 }
		},

		rang7 = {
			{ model = 'polschafter3', label = 'Schafter', price = 1 },
			{ model = 'crusader', label = 'Crusader', price = 1 },
			{ model = 'dune', label = 'Dune', price = 1 },
			{ model = 'mesa3', label = 'Mesa', price = 1 },
			{ model = 'sanchez', label = 'Sanchez', price = 1 },
			{ model = 'pbus2', label = 'Gefängnisbus', price = 1 },
			{ model = 'rmodgt63police', label = 'GT63', price = 1 }
		},

		rang8 = {
			{ model = 'polschafter3', label = 'Schafter', price = 1 },
			{ model = 'crusader', label = 'Crusader', price = 1 },
			{ model = 'dune', label = 'Dune', price = 1 },
			{ model = 'mesa3', label = 'Mesa', price = 1 },
			{ model = 'sanchez', label = 'Sanchez', price = 1 },
			{ model = 'pbus2', label = 'Gefängnisbus', price = 1 },
			{ model = 'rmodgt63police', label = 'GT63', price = 1 },
			{ model = 'barracks', label = 'Barracks', price = 1 },
			{ model = 'dreads', label = 'Dreads', price = 1 }
		},

		rang9 = {
			{ model = 'polschafter3', label = 'Schafter', price = 1 },
			{ model = 'crusader', label = 'Crusader', price = 1 },
			{ model = 'dune', label = 'Dune', price = 1 },
			{ model = 'mesa3', label = 'Mesa', price = 1 },
			{ model = 'sanchez', label = 'Sanchez', price = 1 },
			{ model = 'pbus2', label = 'Gefängnisbus', price = 1 },
			{ model = 'rmodgt63police', label = 'GT63', price = 1 },
			{ model = 'barracks', label = 'Barracks', price = 1 },
			{ model = 'dreads', label = 'Dreads', price = 1 },
			{ model = 'insurgent2', label = 'Insurgent', price = 1 }
		},

		boss = {
			{ model = 'polschafter3', label = 'Schafter', price = 1 },
			{ model = 'crusader', label = 'Crusader', price = 1 },
			{ model = 'dune', label = 'Dune', price = 1 },
			{ model = 'mesa3', label = 'Mesa', price = 1 },
			{ model = 'sanchez', label = 'Sanchez', price = 1 },
			{ model = 'pbus2', label = 'Gefängnisbus', price = 1 },
			{ model = 'rmodgt63police', label = 'GT63', price = 1 },
			{ model = 'barracks', label = 'Barracks', price = 1 },
			{ model = 'dreads', label = 'Dreads', price = 1 },
			{ model = 'insurgent2', label = 'Insurgent', price = 1 },
			{ model = 'M5RB_VV', label = 'BMW M5', price = 1 }
		}
	},

	boat = {
		rang0 = {},

		rang1 = {},

		rang2 = {},

		rang3 = {},

		rang4 = {},

		rang5 = {},

		rang6 = {},

		rang7 = {},

		rang8 = {},

		rang9 = {},

		boss = {
			{model = 'predator', price = 1}
		}
	},

	helicopter = {
		rang0 = {},

		rang1 = {},

		rang2 = {},

		rang3 = {},

		rang4 = {
			{model = 'maverick', price = 1}
		},

		rang5 = {
			{model = 'maverick', price = 1}
		},

		rang6 = {
			{model = 'maverick', price = 1},
			{model = 'buzzard2', price = 1}
		},

		rang7 = {
			{model = 'maverick', price = 1},
			{model = 'buzzard2', price = 1}
		},

		rang8 = {
			{model = 'maverick', price = 1},
			{model = 'buzzard2', price = 1},
			{model = 'cargobob', price = 1}
		},

		rang9 = {
			{model = 'maverick', price = 1},
			{model = 'buzzard2', price = 1},
			{model = 'cargobob', price = 1}
		},

		boss = {
			{model = 'maverick', price = 1},
			{model = 'buzzard2', price = 1},
			{model = 'cargobob', price = 1}
		}
	}

}

Config.Uniforms = {
	rang0 = {
		male = {
			tshirt_1 = 131,  tshirt_2 = 0,
			torso_1 = 220,   torso_2 = 3,
			decals_1 = 0,   decals_2 = 0,
			arms = 18,
			pants_1 = 87,   pants_2 = 3,
			shoes_1 = 24,   shoes_2 = 0,
			helmet_1 = 150,   helmet_2=0,
			chain_1 = -1, 	chain_2=0,
		},
		female = {
			tshirt_1 = 35,  tshirt_2 = 0,
			torso_1 = 48,   torso_2 = 0,
			arms = 42,
			pants_1 = 34,   pants_2 = 0,
			shoes_1 = 24,   shoes_2 = 0
		}
	},

	rang1 = {
		male = {
			tshirt_1 = 131,  tshirt_2 = 0,
			torso_1 = 220,   torso_2 = 3,
			decals_1 = 0,   decals_2 = 0,
			arms = 18,
			pants_1 = 87,   pants_2 = 3,
			shoes_1 = 24,   shoes_2 = 0,
			helmet_1 = 150,   helmet_2=0,
			chain_1 = -1, 	chain_2=0,
		},
		female = {
			tshirt_1 = 35,  tshirt_2 = 0,
			torso_1 = 48,   torso_2 = 0,
			arms = 42,
			pants_1 = 34,   pants_2 = 0,
			shoes_1 = 24,   shoes_2 = 0
		}
	},

	rang2 = {
		male = {
			tshirt_1 = 131,  tshirt_2 = 0,
			torso_1 = 220,   torso_2 = 3,
			decals_1 = 0,   decals_2 = 0,
			arms = 18,
			pants_1 = 87,   pants_2 = 3,
			shoes_1 = 24,   shoes_2 = 0,
			helmet_1 = 150,   helmet_2=0,
			chain_1 = -1, 	chain_2=0,
		},
		female = {
			tshirt_1 = 35,  tshirt_2 = 0,
			torso_1 = 48,   torso_2 = 0,
			arms = 42,
			pants_1 = 34,   pants_2 = 0,
			shoes_1 = 24,   shoes_2 = 0
		}
	},

	rang3 = {
		male = {
			tshirt_1 = 131,  tshirt_2 = 0,
			torso_1 = 220,   torso_2 = 3,
			decals_1 = 0,   decals_2 = 0,
			arms = 18,
			pants_1 = 87,   pants_2 = 3,
			shoes_1 = 24,   shoes_2 = 0,
			helmet_1 = 150,   helmet_2=0,
			chain_1 = -1, 	chain_2=0,
		},
		female = {
			tshirt_1 = 35,  tshirt_2 = 0,
			torso_1 = 48,   torso_2 = 0,
			arms = 42,
			pants_1 = 34,   pants_2 = 0,
			shoes_1 = 24,   shoes_2 = 0
		}
	},

	rang4 = {
		male = {
			tshirt_1 = 131,  tshirt_2 = 0,
			torso_1 = 220,   torso_2 = 3,
			decals_1 = 0,   decals_2 = 0,
			arms = 18,
			pants_1 = 87,   pants_2 = 3,
			shoes_1 = 24,   shoes_2 = 0,
			helmet_1 = 150,   helmet_2=0,
			chain_1 = -1, 	chain_2=0,
		},
		female = {
			tshirt_1 = 35,  tshirt_2 = 0,
			torso_1 = 48,   torso_2 = 0,
			arms = 42,
			pants_1 = 34,   pants_2 = 0,
			shoes_1 = 24,   shoes_2 = 0
		}
	},

	rang5 = {
		male = {
			tshirt_1 = 131,  tshirt_2 = 0,
			torso_1 = 220,   torso_2 = 3,
			decals_1 = 0,   decals_2 = 0,
			arms = 18,
			pants_1 = 87,   pants_2 = 3,
			shoes_1 = 24,   shoes_2 = 0,
			helmet_1 = 150,   helmet_2=0,
			chain_1 = -1, 	chain_2=0,
		},
		female = {
			tshirt_1 = 35,  tshirt_2 = 0,
			torso_1 = 48,   torso_2 = 0,
			arms = 42,
			pants_1 = 34,   pants_2 = 0,
			shoes_1 = 24,   shoes_2 = 0
		}
	},

	rang6 = {
		male = {
			tshirt_1 = 131,  tshirt_2 = 0,
			torso_1 = 220,   torso_2 = 3,
			decals_1 = 0,   decals_2 = 0,
			arms = 18,
			pants_1 = 87,   pants_2 = 3,
			shoes_1 = 24,   shoes_2 = 0,
			helmet_1 = 150,   helmet_2=0,
			chain_1 = -1, 	chain_2=0,
		},
		female = {
			tshirt_1 = 35,  tshirt_2 = 0,
			torso_1 = 48,   torso_2 = 0,
			arms = 42,
			pants_1 = 34,   pants_2 = 0,
			shoes_1 = 24,   shoes_2 = 0
		}
	},

	rang7 = {
		male = {
			tshirt_1 = 131,  tshirt_2 = 0,
			torso_1 = 220,   torso_2 = 3,
			decals_1 = 0,   decals_2 = 0,
			arms = 18,
			pants_1 = 87,   pants_2 = 3,
			shoes_1 = 24,   shoes_2 = 0,
			helmet_1 = 150,   helmet_2=0,
			chain_1 = -1, 	chain_2=0,
		},
		female = {
			tshirt_1 = 35,  tshirt_2 = 0,
			torso_1 = 48,   torso_2 = 0,
			arms = 42,
			pants_1 = 34,   pants_2 = 0,
			shoes_1 = 24,   shoes_2 = 0
		}
	},

	rang8 = {
		male = {
			tshirt_1 = 131,  tshirt_2 = 0,
			torso_1 = 220,   torso_2 = 3,
			decals_1 = 0,   decals_2 = 0,
			arms = 18,
			pants_1 = 87,   pants_2 = 3,
			shoes_1 = 24,   shoes_2 = 0,
			helmet_1 = 150,   helmet_2=0,
			chain_1 = -1, 	chain_2=0,
		},
		female = {
			tshirt_1 = 35,  tshirt_2 = 0,
			torso_1 = 48,   torso_2 = 0,
			arms = 42,
			pants_1 = 34,   pants_2 = 0,
			shoes_1 = 24,   shoes_2 = 0
		}
	},

	rang9 = {
		male = {
			tshirt_1 = 131,  tshirt_2 = 0,
			torso_1 = 220,   torso_2 = 3,
			decals_1 = 0,   decals_2 = 0,
			arms = 18,
			pants_1 = 87,   pants_2 = 3,
			shoes_1 = 24,   shoes_2 = 0,
			helmet_1 = 150,   helmet_2=0,
			chain_1 = -1, 	chain_2=0,
		},
		female = {
			tshirt_1 = 35,  tshirt_2 = 0,
			torso_1 = 48,   torso_2 = 0,
			arms = 42,
			pants_1 = 34,   pants_2 = 0,
			shoes_1 = 24,   shoes_2 = 0
		}
	},

	boss = {
		male = {
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 221,   torso_2 = 3,
			decals_1 = 0,   decals_2 = 0,
			arms = 18,
			pants_1 = 87,   pants_2 = 3,
			shoes_1 = 24,   shoes_2 = 0,
			helmet_1 = 107,   helmet_2=3,
			chain_1 = -1, 	chain_2=0,
		},
		female = {
			tshirt_1 = 35,  tshirt_2 = 0,
			torso_1 = 48,   torso_2 = 0,
			arms = 42,
			pants_1 = 34,   pants_2 = 0,
			shoes_1 = 24,   shoes_2 = 0
		}
	},

	special_wear = {
		male = {
			tshirt_1 = 131,  tshirt_2 = 0,
			torso_1 = 220,   torso_2 = 13,
			decals_1 = 0,   decals_2 = 0,
			arms = 22,
			pants_1 = 87,   pants_2 = 13,
			shoes_1 = 24,   shoes_2 = 0,
			helmet_1 = 106,   helmet_2=20,
			chain_1 = -1, 	chain_2=0,
		},
		female = {
			tshirt_1 = 35,  tshirt_2 = 0,
			torso_1 = 48,   torso_2 = 0,
			arms = 42,
			pants_1 = 34,   pants_2 = 0,
			shoes_1 = 24,   shoes_2 = 0
		}
	},

	special2_wear = {
		male = {
			tshirt_1 = 0,  tshirt_2 = 0,
			torso_1 = 228,   torso_2 = 8,
			decals_1 = 0,   decals_2 = 0,
			arms = 18,
			pants_1 = 92,   pants_2 = 8,
			shoes_1 = 63,   shoes_2 = 4,
			helmet_1 = 111,   helmet_2=2,
			chain_1 = -1, 	chain_2=0,
		},
		female = {
			tshirt_1 = 35,  tshirt_2 = 0,
			torso_1 = 48,   torso_2 = 0,
			arms = 42,
			pants_1 = 34,   pants_2 = 0,
			shoes_1 = 24,   shoes_2 = 0
		}
	},

	bullet_wear = {
		male = {
			bproof_1 = 7,  bproof_2 = 0
		},
		female = {
			bproof_1 = 9,  bproof_2 = 1
		}
	}
}

