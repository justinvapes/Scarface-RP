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

Config.FIBStations = {

	FIB = {

		Blip = {
			Coords  = vector3(152.04, -736.19, 242.15),
			Sprite  = 210,
			Display = 4,
			Scale   = 1.0,
			Colour  = 0
		},

		Cloakrooms = {
			vector3(152.04, -736.19, 242.15)
		},

		Armories = {
			vector3(143.67, -764.33, 242.15)
		},

		Vehicles = {
			{
				Spawner = vector3(95.57, -723.69, 33.13),
				InsideShop = vector3(440.75, -1021.32, 27.48),
				SpawnPoints = {
					{ coords = vector3(96.37, -728.08, 31.72), heading = 339.68, radius = 6.0 },
					{ coords = vector3(100.26, -729.2, 32.72), heading = 339.68, radius = 6.0 }
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
				Spawner = vector3(135.13, -733.28, 262.85),
				InsideShop = vector3(122.23, -741.46, 262.85),
				SpawnPoints = {
					{ coords = vector3(122.23, -741.46, 262.85), heading = 157.66, radius = 10.0 }
				}
			}
		},

		BossActions = {
			vector3(156.02, -738.69, 242.15)
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
		rang0 = {
			{ model = 'rmodgt63police', label = 'GT63', price = 1 }
		},

		rang1 = {
			{ model = 'rmodgt63police', label = 'GT63', price = 1 }
		},

		rang2 = {
			{ model = 'rmodgt63police', label = 'GT63', price = 1 }
		},

		rang3 = {
			{ model = 'rmodgt63police', label = 'GT63', price = 1 }
		},

		rang4 = {
			{ model = 'rmodgt63police', label = 'GT63', price = 1 }
		},

		rang5 = {
			{ model = 'rmodgt63police', label = 'GT63', price = 1 },
			{ model = 'M5RB_VV', label = 'BMW M5', price = 1 }
		},

		rang6 = {
			{ model = 'rmodgt63police', label = 'GT63', price = 1 },
			{ model = 'M5RB_VV', label = 'BMW M5', price = 1 }
		},

		rang7 = {
			{ model = 'rmodgt63police', label = 'GT63', price = 1 },
			{ model = 'M5RB_VV', label = 'BMW M5', price = 1 }
		},

		rang8 = {
			{ model = 'rmodgt63police', label = 'GT63', price = 1 },
			{ model = 'M5RB_VV', label = 'BMW M5', price = 1 }
		},

		rang9 = {
			{ model = 'rmodgt63police', label = 'GT63', price = 1 },
			{ model = 'M5RB_VV', label = 'BMW M5', price = 1 }
		},

		boss = {
			{ model = 'rmodgt63police', label = 'GT63', price = 1 },
			{ model = 'M5RB_VV', label = 'BMW M5', price = 1 },
			{ model = 'polschafter3', label = 'Schafter', price = 1 }
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
			{model = 'frogger2', price = 1}
		}
	}
}

Config.Uniforms = {
	rang0 = {
		male = {
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 51,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 30,
			pants_1 = 28,   pants_2 = 0,
			shoes_1 = 7,   shoes_2 = 0,
			helmet_1 = 10,   helmet_2=4,
			chain_1 = 0, 	chain_2=0,
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
			torso_1 = 51,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 30,
			pants_1 = 28,   pants_2 = 0,
			shoes_1 = 7,   shoes_2 = 0,
			helmet_1 = 10,   helmet_2=4,
			chain_1 = 0, 	chain_2=0,
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
			torso_1 = 51,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 30,
			pants_1 = 28,   pants_2 = 0,
			shoes_1 = 7,   shoes_2 = 0,
			helmet_1 = 10,   helmet_2=4,
			chain_1 = 0, 	chain_2=0,
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
			torso_1 = 51,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 30,
			pants_1 = 28,   pants_2 = 0,
			shoes_1 = 7,   shoes_2 = 0,
			helmet_1 = 10,   helmet_2=4,
			chain_1 = 0, 	chain_2=0,
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
			torso_1 = 51,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 30,
			pants_1 = 28,   pants_2 = 0,
			shoes_1 = 7,   shoes_2 = 0,
			helmet_1 = 10,   helmet_2=4,
			chain_1 = 0, 	chain_2=0,
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
			torso_1 = 51,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 30,
			pants_1 = 28,   pants_2 = 0,
			shoes_1 = 7,   shoes_2 = 0,
			helmet_1 = 10,   helmet_2=4,
			chain_1 = 0, 	chain_2=0,
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
			torso_1 = 51,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 30,
			pants_1 = 28,   pants_2 = 0,
			shoes_1 = 7,   shoes_2 = 0,
			helmet_1 = 10,   helmet_2=4,
			chain_1 = 0, 	chain_2=0,
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
			torso_1 = 51,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 30,
			pants_1 = 28,   pants_2 = 0,
			shoes_1 = 7,   shoes_2 = 0,
			helmet_1 = 10,   helmet_2=4,
			chain_1 = 0, 	chain_2=0,
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
			torso_1 = 51,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 30,
			pants_1 = 28,   pants_2 = 0,
			shoes_1 = 7,   shoes_2 = 0,
			helmet_1 = 10,   helmet_2=4,
			chain_1 = 0, 	chain_2=0,
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
			torso_1 = 51,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 30,
			pants_1 = 28,   pants_2 = 0,
			shoes_1 = 7,   shoes_2 = 0,
			helmet_1 = 10,   helmet_2=4,
			chain_1 = 0, 	chain_2=0,
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
			torso_1 = 51,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 30,
			pants_1 = 28,   pants_2 = 0,
			shoes_1 = 7,   shoes_2 = 0,
			helmet_1 = 10,   helmet_2=4,
			chain_1 = 0, 	chain_2=0,
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
			torso_1 = 51,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 30,
			pants_1 = 28,   pants_2 = 0,
			shoes_1 = 7,   shoes_2 = 0,
			helmet_1 = 10,   helmet_2=4,
			chain_1 = 0, 	chain_2=0,
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
			bproof_1 = 54,  bproof_2 = 0
		},
		female = {
			bproof_1 = 9,  bproof_2 = 1
		}
	}
}

