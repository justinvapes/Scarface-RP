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

Config.lssdStations = {

	lssd = {

		Blip = {
			Coords  = vector3(1849.53, 3696.11, 34.27),
			Sprite  = 60,
			Display = 4,
			Scale   = 1.2,
			Colour  = 47
		},

		Cloakrooms = {
			vector3(1849.53, 3696.11, 34.27)
		},

		Armories = {
			vector3(1860.62, 3688.2, 34.27)
		},

		Vehicles = {
			{
				Spawner = vector3(1868.67, 3688.77, 33.75),
				InsideShop = vector3(1866.86, 3699.74, 33.08),
				SpawnPoints = {
					{coords = vector3(1866.86, 3699.74, 33.08), heading = 208.80, radius = 6.0},
					{coords = vector3(1871.51, 3691.80, 33.17), heading = 210.0, radius = 6.0}
				}
			},
		},

		Helicopters = {
			{
				Spawner = vector3(1860.57, 3650.53, 35.71),
				InsideShop = vector3(1868.95, 3649.10, 36.11),
				SpawnPoints = {
					{coords = vector3(1868.95, 3649.10, 36.11), heading = 30.57, radius = 10.0}
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

		BossActions = {
			vector3(1858.04, 3689.38, 38.07)
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
			{model = 'code3cvpi', price = 1}
		},

		rang1 = {
			{model = 'code3cvpi', price = 1},
			{model = 'code3fpis', price = 1}
		},

		rang2 = {
			{model = 'code3cvpi', price = 1},
			{model = 'code3fpis', price = 1},
			{model = 'code318tahoe', price = 1}
		},

		rang3 = {
			{model = 'code3cvpi', price = 1},
			{model = 'code3fpis', price = 1},
			{model = 'code318tahoe', price = 1},
			{model = 'code320exp', price = 1}
		},

		rang4 = {
			{model = 'code3cvpi', price = 1},
			{model = 'code3fpis', price = 1},
			{model = 'code318tahoe', price = 1},
			{model = 'code320exp', price = 1},
			{model = 'code318charg', price = 1}
		},

		rang5 = {
			{model = 'code3cvpi', price = 1},
			{model = 'code3fpis', price = 1},
			{model = 'code318tahoe', price = 1},
			{model = 'code320exp', price = 1},
			{model = 'code318charg', price = 1},
			{model = 'code3durango', price = 1}
		},

		rang6 = {
			{model = 'code3cvpi', price = 1},
			{model = 'code3fpis', price = 1},
			{model = 'code318tahoe', price = 1},
			{model = 'code320exp', price = 1},
			{model = 'code318charg', price = 1},
			{model = 'code3durango', price = 1},
			{model = 'ram2500', price = 1}
		},

		rang7 = {
			{model = 'code3cvpi', price = 1},
			{model = 'code3fpis', price = 1},
			{model = 'code318tahoe', price = 1},
			{model = 'code320exp', price = 1},
			{model = 'code318charg', price = 1},
			{model = 'code3durango', price = 1},
			{model = 'ram2500', price = 1},
			{model = 'code3camero', price = 1}
		},

		rang8 = {
			{model = 'code3cvpi', price = 1},
			{model = 'code3fpis', price = 1},
			{model = 'code318tahoe', price = 1},
			{model = 'code320exp', price = 1},
			{model = 'code318charg', price = 1},
			{model = 'code3durango', price = 1},
			{model = 'ram2500', price = 1},
			{model = 'code3camero', price = 1}
		},

		rang9 = {
			{model = 'code3cvpi', price = 1},
			{model = 'code3fpis', price = 1},
			{model = 'code318tahoe', price = 1},
			{model = 'code320exp', price = 1},
			{model = 'code318charg', price = 1},
			{model = 'code3durango', price = 1},
			{model = 'ram2500', price = 1},
			{model = 'code3camero', price = 1}
		},

		boss = {
			{model = 'code3cvpi', price = 1},
			{model = 'code3fpis', price = 1},
			{model = 'code318tahoe', price = 1},
			{model = 'code320exp', price = 1},
			{model = 'code318charg', price = 1},
			{model = 'code3durango', price = 1},
			{model = 'ram2500', price = 1},
			{model = 'code3camero', price = 1},
			{model = 'um20fpiu', price = 1},
			{model = 'um18chgr', price = 1},
			{model = 'pd_dirtbike', price = 1}
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
			{model = 'cgheli', price = 1}
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
			{model = 'code3boat', price = 1}
		}
	}
}

Config.Uniforms = {
	rang0 = {
		male = {
			tshirt_1 = 53,  tshirt_2 = 1,
			torso_1 = 111,   torso_2 = 1,
			decals_1 = 0,   decals_2 = 0,
			arms = 6,
			pants_1 = 46,   pants_2 = 1,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = 10,  helmet_2 = 0,
			chain_1 = 6,    chain_2 = 0,
			bproof_1 = 12,   bproof_2 = 1
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
			tshirt_1 = 53,  tshirt_2 = 0,
			torso_1 = 75,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 0,
			pants_1 = 46,   pants_2 = 1,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = 13,  helmet_2 = 0,
			chain_1 = 6,    chain_2 = 0,
			bproof_1 = 0,   bproof_2 = 0
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
			tshirt_1 = 53,  tshirt_2 = 0,
			torso_1 = 75,   torso_2 = 0,
			decals_1 = 8,   decals_2 = 2,
			arms = 0,
			pants_1 = 46,   pants_2 = 1,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = 13,  helmet_2 = 0,
			chain_1 = 6,    chain_2 = 0,
			bproof_1 = 0,   bproof_2 = 0
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
			tshirt_1 = 53,  tshirt_2 = 0,
			torso_1 = 75,   torso_2 = 0,
			decals_1 = 8,   decals_2 = 2,
			arms = 0,
			pants_1 = 46,   pants_2 = 1,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = 13,  helmet_2 = 0,
			chain_1 = 6,    chain_2 = 0,
			bproof_1 = 0,   bproof_2 = 0
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
			tshirt_1 = 53,  tshirt_2 = 0,
			torso_1 = 75,   torso_2 = 0,
			decals_1 = 11,   decals_2 = 5,
			arms = 0,
			pants_1 = 46,   pants_2 = 1,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = 13,  helmet_2 = 0,
			chain_1 = 6,    chain_2 = 0,
			bproof_1 = 0,   bproof_2 = 0
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
			tshirt_1 = 53,  tshirt_2 = 0,
			torso_1 = 75,   torso_2 = 0,
			decals_1 = 8,   decals_2 = 3,
			arms = 0,
			pants_1 = 46,   pants_2 = 1,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = 13,  helmet_2 = 0,
			chain_1 = 6,    chain_2 = 0,
			bproof_1 = 0,   bproof_2 = 0
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
			tshirt_1 = 53,  tshirt_2 = 0,
			torso_1 = 150,   torso_2 = 4,
			decals_1 = 0,   decals_2 = 0,
			arms = 1,
			pants_1 = 46,   pants_2 = 1,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = 30,  helmet_2 = 0,
			chain_1 = 6,    chain_2 = 0,
			bproof_1 = 0,   bproof_2 = 0
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
			tshirt_1 = 53,  tshirt_2 = 0,
			torso_1 = 150,   torso_2 = 5,
			decals_1 = 0,   decals_2 = 0,
			arms = 1,
			pants_1 = 46,   pants_2 = 1,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = 30,  helmet_2 = 0,
			chain_1 = 6,    chain_2 = 0,
			bproof_1 = 0,   bproof_2 = 0
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
			tshirt_1 = 53,  tshirt_2 = 0,
			torso_1 = 150,   torso_2 = 6,
			decals_1 = 0,   decals_2 = 0,
			arms = 1,
			pants_1 = 46,   pants_2 = 1,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = 30,  helmet_2 = 0,
			chain_1 = 6,    chain_2 = 0,
			bproof_1 = 0,   bproof_2 = 0
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
			tshirt_1 = 53,  tshirt_2 = 0,
			torso_1 = 150,   torso_2 = 7,
			decals_1 = 0,   decals_2 = 0,
			arms = 1,
			pants_1 = 46,   pants_2 = 1,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = 30,  helmet_2 = 0,
			chain_1 = 6,    chain_2 = 0,
			bproof_1 = 0,   bproof_2 = 0
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
			tshirt_1 = 53,  tshirt_2 = 0,
			torso_1 = 150,   torso_2 = 10,
			decals_1 = 0,   decals_2 = 0,
			arms = 1,
			pants_1 = 46,   pants_2 = 1,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = 33,  helmet_2 = 1,
			chain_1 = 6,    chain_2 = 0,
			bproof_1 = 0,   bproof_2 = 0
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
			bproof_1 = 12,  bproof_2 = 1
		},
		female = {
			bproof_1 = 9,  bproof_2 = 1
		}
	},

	pilot_wear = {
		male = {
			tshirt_1 = 43,  tshirt_2 = 1,
			torso_1 = 65,   torso_2 = 3,
			decals_1 = 15,   decals_2 = 1,
			arms = 17,
			pants_1 = 38,   pants_2 = 3,
			shoes_1 = 35,   shoes_2 = 0,
			helmet_1 = 79,  helmet_2 = 3,
			chain_1 = 6,    chain_2 = 0,
			bproof_1 = 0,   bproof_2 = 0
		},
		female = {
			bproof_1 = 9,  bproof_2 = 1
		}
	},

	special_wear = {
		male = {
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 49,   torso_2 = 2,
			decals_1 = 4,   decals_2 = 0,
			arms = 17,
			pants_1 = 52,   pants_2 = 1,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = 119,  helmet_2 = 0,
			chain_1 = 1,    chain_2 = 1,
			bproof_1 = 7,   bproof_2 = 1,
			mask_1 = 104,   mask_2 = 11
		},
		female = {
			bproof_1 = 9,  bproof_2 = 1
		}
	}
}
