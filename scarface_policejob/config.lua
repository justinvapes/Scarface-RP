Config                            = {}

Config.DrawDistance               = 10.0 -- How close do you need to be for the markers to be drawn (in GTA units).
Config.MarkerType                 = {Cloakrooms = 20, Armories = 21, BossActions = 22, Vehicles = 36, Helicopters = 34}
Config.MarkerSize                 = {x = 1.5, y = 1.5, z = 0.5}
Config.MarkerColor                = {r = 50, g = 50, b = 204}

Config.EnablePlayerManagement     = true -- Enable if you want society managing.
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- Enable if you're using esx_identity.
Config.EnableLicenses             = true -- Enable if you're using esx_license.

Config.EnableHandcuffTimer        = true -- Enable handcuff timer? will unrestrain player after the time ends.
Config.HandcuffTimer              = 10 * 60000 -- 10 minutes.

Config.EnableJobBlip              = false -- Enable blips for cops on duty, requires esx_society.
Config.EnableCustomPeds           = false -- Enable custom peds in cloak room? See Config.CustomPeds below to customize peds.

Config.EnableESXService           = false -- Enable esx service?
Config.MaxInService               = -1 -- How much people can be in service at once?

Config.Locale                     = 'de'

Config.PoliceStations = {

	LSPD = {

		Blip = {
			Coords  = vector3(452.45, -980.08, 30.69),
			Sprite  = 60,
			Display = 4,
			Scale   = 1.0,
			Colour  = 29
		},

		Cloakrooms = {
			vector3(450.1, -992.94, 30.69)
		},

		Armories = {
			vector3(452.45, -980.08, 30.69)
		},

		Vehicles = {
			{
				Spawner = vector3(442.01, -1014.02, 28.63),
				InsideShop = vector3(442.12, -1020.25, 28.21),
				SpawnPoints = {
					{coords = vector3(442.12, -1020.25, 28.21), heading = 92.06, radius = 6.0}
				}
			},

			{
				Spawner = vector3(473.01, -1018.74, 28.16),
				InsideShop = vector3(475.55, -1022.2, 27.65),
				SpawnPoints = {
					{coords = vector3(475.55, -1022.2, 27.65), heading = 274.83, radius = 6.0}
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
			}
		},

		BossActions = {
			vector3(451.68, -973.58, 30.69),
			vector3(443.37, -973.49, 26.67),
			vector3(461.51, -1007.58, 35.93)
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
		{weapon = 'WEAPON_FLASHLIGHT', price = 1},
		{weapon = 'WEAPON_NIGHTSTICK', price = 1},
		{weapon = 'WEAPON_STUNGUN', price = 1},
		{weapon = 'WEAPON_COMBATPISTOL', price = 1}
	},

	rang1 = {
		{weapon = 'WEAPON_FLASHLIGHT', price = 1},
		{weapon = 'WEAPON_NIGHTSTICK', price = 1},
		{weapon = 'WEAPON_STUNGUN', price = 1},
		{weapon = 'WEAPON_COMBATPISTOL', price = 1},
		{weapon = 'WEAPON_SMG', price = 1}
	},

	rang2 = {
		{weapon = 'WEAPON_FLASHLIGHT', price = 1},
		{weapon = 'WEAPON_NIGHTSTICK', price = 1},
		{weapon = 'WEAPON_STUNGUN', price = 1},
		{weapon = 'WEAPON_COMBATPISTOL', price = 1},
		{weapon = 'WEAPON_SMG', price = 1}
	},

	rang3 = {
		{weapon = 'WEAPON_FLASHLIGHT', price = 1},
		{weapon = 'WEAPON_NIGHTSTICK', price = 1},
		{weapon = 'WEAPON_STUNGUN', price = 1},
		{weapon = 'WEAPON_COMBATPISTOL', price = 1},
		{weapon = 'WEAPON_SMG', price = 1}
	},

	rang4 = {
		{weapon = 'WEAPON_FLASHLIGHT', price = 1},
		{weapon = 'WEAPON_NIGHTSTICK', price = 1},
		{weapon = 'WEAPON_STUNGUN', price = 1},
		{weapon = 'WEAPON_COMBATPISTOL', price = 1},
		{weapon = 'WEAPON_SMG', price = 1}
	},

	rang5 = {
		{weapon = 'WEAPON_FLASHLIGHT', price = 1},
		{weapon = 'WEAPON_NIGHTSTICK', price = 1},
		{weapon = 'WEAPON_STUNGUN', price = 1},
		{weapon = 'WEAPON_COMBATPISTOL', price = 1},
		{weapon = 'WEAPON_SMG', price = 1},
		{weapon = 'WEAPON_ADVANCEDRIFLE', price = 1}
	},

	rang6 = {
		{weapon = 'WEAPON_FLASHLIGHT', price = 1},
		{weapon = 'WEAPON_NIGHTSTICK', price = 1},
		{weapon = 'WEAPON_STUNGUN', price = 1},
		{weapon = 'WEAPON_COMBATPISTOL', price = 1},
		{weapon = 'WEAPON_SMG', price = 1},
		{weapon = 'WEAPON_ADVANCEDRIFLE', price = 1}
	},

	rang7 = {
		{weapon = 'WEAPON_FLASHLIGHT', price = 1},
		{weapon = 'WEAPON_NIGHTSTICK', price = 1},
		{weapon = 'WEAPON_STUNGUN', price = 1},
		{weapon = 'WEAPON_COMBATPISTOL', price = 1},
		{weapon = 'WEAPON_SMG', price = 1},
		{weapon = 'WEAPON_ADVANCEDRIFLE', price = 1},
		{weapon = 'WEAPON_CARBINERIFLE', price = 1}
	},

	rang8 = {
		{weapon = 'WEAPON_FLASHLIGHT', price = 1},
		{weapon = 'WEAPON_NIGHTSTICK', price = 1},
		{weapon = 'WEAPON_STUNGUN', price = 1},
		{weapon = 'WEAPON_COMBATPISTOL', price = 1},
		{weapon = 'WEAPON_SMG', price = 1},
		{weapon = 'WEAPON_ADVANCEDRIFLE', price = 1},
		{weapon = 'WEAPON_CARBINERIFLE', price = 1}
	},

	rang9 = {
		{weapon = 'WEAPON_FLASHLIGHT', price = 1},
		{weapon = 'WEAPON_NIGHTSTICK', price = 1},
		{weapon = 'WEAPON_STUNGUN', price = 1},
		{weapon = 'WEAPON_COMBATPISTOL', price = 1},
		{weapon = 'WEAPON_SMG', price = 1},
		{weapon = 'WEAPON_ADVANCEDRIFLE', price = 1},
		{weapon = 'WEAPON_CARBINERIFLE', price = 1}
	},

	boss = {
		{weapon = 'WEAPON_FLASHLIGHT', price = 1},
		{weapon = 'WEAPON_NIGHTSTICK', price = 1},
		{weapon = 'WEAPON_STUNGUN', price = 1},
		{weapon = 'WEAPON_COMBATPISTOL', price = 1},
		{weapon = 'WEAPON_SMG', price = 1},
		{weapon = 'WEAPON_ADVANCEDRIFLE', price = 1},
		{weapon = 'WEAPON_CARBINERIFLE', price = 1},
		{weapon = 'WEAPON_SPECIALCARBINE', price = 1}
	}
}

Config.AuthorizedVehicles = {
	car = {
		rang0 = {
			{model = 'code398cvpi', price = 1}
		},

		rang1 = {
			{model = 'code398cvpi', price = 1},
			{model = 'code31fpis', price = 1}
		},

		rang2 = {
			{model = 'code398cvpi', price = 1},
			{model = 'code31fpis', price = 1},
			{model = 'code320fpiu', price = 1}
		},

		rang3 = {
			{model = 'code398cvpi', price = 1},
			{model = 'code31fpis', price = 1},
			{model = 'code320fpiu', price = 1}
		},

		rang4 = {
			{model = 'code398cvpi', price = 1},
			{model = 'code31fpis', price = 1},
			{model = 'code320fpiu', price = 1}
		},

		rang5 = {
			{model = 'code398cvpi', price = 1},
			{model = 'code31fpis', price = 1},
			{model = 'code320fpiu', price = 1},
			{model = 'code319tahoe', price = 1}
		},

		rang6 = {
			{model = 'code398cvpi', price = 1},
			{model = 'code31fpis', price = 1},
			{model = 'code320fpiu', price = 1},
			{model = 'code319tahoe', price = 1}
		},

		rang7 = {
			{model = 'code398cvpi', price = 1},
			{model = 'code31fpis', price = 1},
			{model = 'code320fpiu', price = 1},
			{model = 'code319tahoe', price = 1},
			{model = 'code319charg', price = 1}
		},

		rang8 = {
			{model = 'code398cvpi', price = 1},
			{model = 'code31fpis', price = 1},
			{model = 'code320fpiu', price = 1},
			{model = 'code319tahoe', price = 1},
			{model = 'code319charg', price = 1}
		},

		rang9 = {
			{model = 'code398cvpi', price = 1},
			{model = 'code31fpis', price = 1},
			{model = 'code320fpiu', price = 1},
			{model = 'code319tahoe', price = 1},
			{model = 'code3ram', price = 1}
		},

		boss = {
			{model = 'code398cvpi', price = 1},
			{model = 'code31fpis', price = 1},
			{model = 'code320fpiu', price = 1},
			{model = 'code319tahoe', price = 1},
			{model = 'code3ram', price = 1}
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

		rang4 = {},

		rang5 = {},

		rang6 = {},

		rang7 = {},

		rang8 = {},

		rang9 = {},

		boss = {
			{model = 'polmav1', price = 1}
		}
	}

}

Config.Uniforms = {
	rang0 = {
		male = {
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 149,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 30,
			pants_1 = 46,   pants_2 = 0,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = 13,   helmet_2=2,
			chain_1 = 6, 	chain_2=0,
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
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 149,   torso_2 = 8,
			decals_1 = 0,   decals_2 = 0,
			arms = 30,
			pants_1 = 46,   pants_2 = 0,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = 13,   helmet_2=2,
			chain_1 = 6, 	chain_2=0,
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
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 149,   torso_2 = 1,
			decals_1 = 0,   decals_2 = 0,
			arms = 30,
			pants_1 = 46,   pants_2 = 0,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = 13,   helmet_2=2,
			chain_1 = 6, 	chain_2=0,
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
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 149,   torso_2 = 2,
			decals_1 = 0,   decals_2 = 0,
			arms = 30,
			pants_1 = 46,   pants_2 = 0,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = 13,   helmet_2=2,
			chain_1 = 6, 	chain_2=0,
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
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 149,   torso_2 = 2,
			decals_1 = 0,   decals_2 = 0,
			arms = 30,
			pants_1 = 46,   pants_2 = 0,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = 13,   helmet_2=2,
			chain_1 = 6, 	chain_2=0,
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
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 149,   torso_2 = 2,
			decals_1 = 0,   decals_2 = 0,
			arms = 30,
			pants_1 = 46,   pants_2 = 0,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = 13,   helmet_2=2,
			chain_1 = 6, 	chain_2=0,
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
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 149,   torso_2 = 2,
			decals_1 = 0,   decals_2 = 0,
			arms = 30,
			pants_1 = 46,   pants_2 = 0,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = 13,   helmet_2=2,
			chain_1 = 6, 	chain_2=0,
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
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 149,   torso_2 = 2,
			decals_1 = 0,   decals_2 = 0,
			arms = 30,
			pants_1 = 46,   pants_2 = 0,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = 13,   helmet_2=2,
			chain_1 = 6, 	chain_2=0,
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
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 149,   torso_2 = 2,
			decals_1 = 0,   decals_2 = 0,
			arms = 30,
			pants_1 = 46,   pants_2 = 0,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = 13,   helmet_2=2,
			chain_1 = 6, 	chain_2=0,
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
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 149,   torso_2 = 2,
			decals_1 = 0,   decals_2 = 0,
			arms = 30,
			pants_1 = 46,   pants_2 = 0,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = 13,   helmet_2=2,
			chain_1 = 6, 	chain_2=0,
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
			torso_1 = 149,   torso_2 = 2,
			decals_1 = 0,   decals_2 = 0,
			arms = 30,
			pants_1 = 46,   pants_2 = 0,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = 13,   helmet_2=2,
			chain_1 = 6, 	chain_2=0,
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
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 149,   torso_2 = 2,
			decals_1 = 0,   decals_2 = 0,
			arms = 30,
			pants_1 = 46,   pants_2 = 0,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = 13,   helmet_2=2,
			chain_1 = 6, 	chain_2=0,
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

