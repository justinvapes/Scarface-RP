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

Config.dmvStations = {

	dmv = {

		Blip = {
			Coords  = vector3(-1041.66, -234.96, 37.96),
			Sprite  = 351,
			Display = 4,
			Scale   = 1.0,
			Colour  = 0
		},

		Cloakrooms = {
			vector3(-1041.66, -234.96, 37.96)
		},

		Armories = {
			vector3(-1084.04, -246.26, 37.76)
		},

		Vehicles = {
			{
				Spawner = vector3(-1095.71, -257.64, 37.5),
				InsideShop = vector3(-1099.187, -265.66, 37.23),
				SpawnPoints = {
					{ coords = vector3(-1099.187, -265.66, 37.23), heading = 204.66, radius = 6.0 }
				}
			},
			{
				Spawner = vector3(-1000.65, -1422.11, 5.04),
				InsideShop = vector3(-996.99, -1426.37, 4.62),
				SpawnPoints = {
					{ coords = vector3(-996.99, -1426.37, 4.62), heading = 108.08, radius = 6.0 }
				}
			},
			{
				Spawner = vector3(-1028.37, -2893.14, 13.95),
				InsideShop = vector3(-1021.75, -2891.818, 13.54),
				SpawnPoints = {
					{ coords = vector3(-1021.75, -2891.818, 13.54), heading = 149.131, radius = 6.0 }
				}
			}
		},

		Boats = {
			{
				Spawner = vector3(-927.53, -1368.33, 1.59),
				InsideShop = vector3(-928.68, -1364.79, 0.11),
				SpawnPoints = {
					{coords = vector3(-928.68, -1364.79, 0.11), heading = 287.95, radius = 10.0}
				}
			}
		},

		Helicopters = {
			{
				Spawner = vector3(-1082.47, -293.85, 37.7),
				InsideShop = vector3(-1091.52, -309.002, 38.04),
				SpawnPoints = {
					{ coords = vector3(-1091.52, -309.002, 38.04), heading = 340.13, radius = 10.0 }
				}
			},
			{
				Spawner = vector3(-992.95, -2950.32, 13.95),
				InsideShop = vector3(-998.76, -2983.96, 14.54),
				SpawnPoints = {
					{ coords = vector3(-998.76, -2983.96, 14.54), heading = 58.78, radius = 10.0 }
				}
			},
			{
				Spawner = vector3(-1143.54, -2874.059, 13.94),
				InsideShop = vector3(-1145.50, -2863.68, 14.3),
				SpawnPoints = {
					{ coords = vector3(-1145.50, -2863.68, 14.3), heading = 150.22, radius = 10.0 }
				}
			},
			{
				Spawner = vector3(1775.25, 3247.72, 42.07),
				InsideShop = vector3(1769.82, 3239.55, 42.52),
				SpawnPoints = {
					{ coords = vector3(1769.82, 3239.55, 42.52), heading = 282.45, radius = 10.0 }
				}
			}
		},

		BossActions = {
			vector3(-1049.83, -241.35, 44.02)
		}

	}

}

Config.ShopItems ={

	{label = ('Medikit'), value = 'medikit', price = 1000, maxi = 3},
    {label = ('Handy'), value = 'phone', price = 250, maxi = 1}

}

Config.AuthorizedWeapons = {
	rang0 = {},

	rang1 = {},

	rang2 = {},

	rang3 = {},

	rang4 = {},

	rang5 = {},

	rang6 = {},

	rang7 = {
		{ weapon = 'GADGET_PARACHUTE', price = 2500}
	},

	rang8 = {
		{ weapon = 'GADGET_PARACHUTE', price = 2500}
	},

	rang9 = {
		{ weapon = 'GADGET_PARACHUTE', price = 2500}
	},

	boss = {
		{ weapon = 'GADGET_PARACHUTE', price = 2500},
		{ weapon = 'WEAPON_STUNGUN', price = 12500 }
	}
}

Config.AuthorizedVehicles = {
	car = {
		rang0 = {},

		rang1 = {
			{ model = 'focusrs', label = 'PKW Fokus', price = 1 }
		},
	
		rang2 = {
			{ model = 'focusrs', label = 'PKW Fokus', price = 1 },
			{ model = 'gle450', label = 'SUV GLE', price = 1 }
		},
	
		rang3 = {
			{ model = 'focusrs', label = 'PKW Fokus', price = 1 },
			{ model = 'gle450', label = 'SUV GLE', price = 1 },
			{ model = 'exp10', label = 'Sport Explorer', price = 1 }
		},
	
		rang4 = {
			{ model = 'focusrs', label = 'PKW Fokus', price = 1 },
			{ model = 'gle450', label = 'SUV GLE', price = 1 },
			{ model = 'exp10', label = 'Sport Explorer', price = 1 },
			{ model = 'cbr', label = 'Motorrad CBR', price = 1 }
		},
		
		rang5 = {
			{ model = 'focusrs', label = 'PKW Fokus', price = 1 },
			{ model = 'gle450', label = 'SUV GLE', price = 1 },
			{ model = 'exp10', label = 'Sport Explorer', price = 1 },
			{ model = 'cbr', label = 'Motorrad CBR', price = 1 },
			{ model = 'mule', label = 'LKW Mule', price = 1 }
		},
	
		rang6 = {
			{ model = 'focusrs', label = 'PKW Fokus', price = 1 },
			{ model = 'gle450', label = 'SUV GLE', price = 1 },
			{ model = 'exp10', label = 'Sport Explorer', price = 1 },
			{ model = 'cbr', label = 'Motorrad CBR', price = 1 },
			{ model = 'mule', label = 'LKW Mule', price = 1 }
		},
	
		rang7 = {
			{ model = 'focusrs', label = 'PKW Fokus', price = 1 },
			{ model = 'gle450', label = 'SUV GLE', price = 1 },
			{ model = 'exp10', label = 'Sport Explorer', price = 1 },
			{ model = 'cbr', label = 'Motorrad CBR', price = 1 },
			{ model = 'mule', label = 'LKW Mule', price = 1 }
		},
	
		rang8 = {
			{ model = 'focusrs', label = 'PKW Fokus', price = 1 },
			{ model = 'gle450', label = 'SUV GLE', price = 1 },
			{ model = 'exp10', label = 'Sport Explorer', price = 1 },
			{ model = 'cbr', label = 'Motorrad CBR', price = 1 },
			{ model = 'mule', label = 'LKW Mule', price = 1 }
		},
	
		rang9 = {
			{ model = 'focusrs', label = 'PKW Fokus', price = 1 },
			{ model = 'gle450', label = 'SUV GLE', price = 1 },
			{ model = 'exp10', label = 'Sport Explorer', price = 1 },
			{ model = 'cbr', label = 'Motorrad CBR', price = 1 },
			{ model = 'mule', label = 'LKW Mule', price = 1 },
			{ model = 'bus2', label = 'Bus', price = 1 }
		},
		
		boss = {
			{ model = 'focusrs', label = 'PKW Fokus', price = 1 },
			{ model = 'gle450', label = 'SUV GLE', price = 1 },
			{ model = 'exp10', label = 'Sport Explorer', price = 1 },
			{ model = 'cbr', label = 'Motorrad CBR', price = 1 },
			{ model = 'mule', label = 'LKW Mule', price = 1 },
			{ model = 'bus2', label = 'Bus', price = 1 }
		}
	},

	boat = {
		rang0 = {},

		rang1 = {},

		rang2 = {},

		rang3 = {},

		rang4 = {},

		rang5 = {
			{model = 'dinghy', price = 1}
		},

		rang6 = {
			{model = 'dinghy', price = 1}
		},

		rang7 = {
			{model = 'dinghy', price = 1}
		},

		rang8 = {
			{model = 'dinghy', price = 1}
		},

		rang9 = {
			{model = 'dinghy', price = 1}
		},

		boss = {
			{model = 'dinghy', price = 1}
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

		rang7 = {
			{model = 'heli', price = 1}
		},

		rang8 = {
			{model = 'heli', price = 1},
			{model = 'luxor', price = 1}
		},

		rang9 = {
			{model = 'heli', price = 1},
			{model = 'luxor', price = 1}
		},

		boss = {
			{model = 'heli', price = 1},
			{model = 'luxor', price = 1}
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

