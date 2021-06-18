Config                            = {}

Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = {x = 1.5, y = 1.5, z = 0.5}
Config.MarkerColor                = {r = 50, g = 50, b = 204}

Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- enable if you're using esx_identity
Config.EnableLicenses             = false -- enable if you're using esx_license

Config.EnableJobBlip              = false -- enable blips for cops on duty, requires esx_society
Config.EnableCustomPeds           = false -- enable custom peds in cloak room? See Config.CustomPeds below to customize peds

Config.EnableESXService           = false -- enable esx service?
Config.MaxInService               = 5

Config.Locale                     = 'de'

Config.mechanicStations = {

	Bennys = {

		Blip = {
			Coords  = vector3(425.1, -979.5, 30.7),
			Sprite  = 60,
			Display = 4,
			Scale   = 1.2,
			Colour  = 29
		},

		Cloakrooms = {
			vector3(-212.89,-1332.21,23.14),
		},

		Armories = {
			vector3(-241.4, -1327.79, 30.89),
			vector3(-35.7, -1070.19, 28.39),
			vector3(-345.15, -130.58, 39.00)
		},

		Vehicles = {
			{
				Spawner = vector3(-197.29, -1320.19, 31.08),
				InsideShop = vector3(-180.64, -1302.58, 31.29),
				SpawnPoints = {
					{coords = vector3(-180.64, -1302.58, 31.29), heading = 290.77, radius = 6.0}
				}
			},
			{
				Spawner = vector3(-32.34, -1039.05, 28.59),
				InsideShop = vector3(-34.72, -1015.55, 28.99),
				SpawnPoints = {
					{coords = vector3(-34.72, -1015.55, 28.99), heading = 71.97, radius = 6.0}
				}
			},
			{
				Spawner = vector3(-347.22, -133.88, 39.00),
				InsideShop = vector3(-361.85, -121.77, 38.27),
				SpawnPoints = {
					{coords = vector3(-361.85, -121.77, 38.27), heading = 67.57, radius = 6.0}
				}
			}
		},

		BossActions = {
			vector3(-199.244, -1315.35, 31.08),
			vector3(-37.56, -1039.34, 28.59),
			vector3(-323.70, -129.79, 38.99)
		}

	}

}

Config.AuthorizedWeapons = {
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
		{weapon = 'WEAPON_STUNGUN', price = 10000},
	}
}

Config.AuthorizedVehicles = {
	car = {
		rang0 = {
			{model = 'towtruck', price = 25000},
			{model = 'towtruck2', price = 15000},
			{model = 'slamvan', price = 35000}
		},

		rang1 = {
			{model = 'towtruck', price = 25000},
			{model = 'towtruck2', price = 15000},
			{model = 'slamvan', price = 35000}
		},

		rang2 = {
			{model = 'towtruck', price = 25000},
			{model = 'towtruck2', price = 15000},
			{model = 'slamvan', price = 35000}
		},

		rang3 = {
			{model = 'towtruck', price = 25000},
			{model = 'towtruck2', price = 15000},
			{model = 'slamvan', price = 35000}
		},

		rang4 = {
			{model = 'towtruck', price = 25000},
			{model = 'towtruck2', price = 15000},
			{model = 'slamvan', price = 35000}
		},

		rang5 = {
			{model = 'towtruck', price = 25000},
			{model = 'towtruck2', price = 15000},
			{model = 'slamvan', price = 35000}
		},

		rang6 = {
			{model = 'towtruck', price = 25000},
			{model = 'towtruck2', price = 15000},
			{model = 'slamvan', price = 35000}
		},

		rang7 = {
			{model = 'towtruck', price = 25000},
			{model = 'towtruck2', price = 15000},
			{model = 'slamvan', price = 35000}
		},

		rang8 = {
			{model = 'towtruck', price = 25000},
			{model = 'towtruck2', price = 15000},
			{model = 'slamvan', price = 35000}
		},

		rang9 = {
			{model = 'towtruck', price = 25000},
			{model = 'towtruck2', price = 15000},
			{model = 'slamvan', price = 35000}
		},

		boss = {
			{model = 'towtruck', price = 25000},
			{model = 'towtruck2', price = 15000},
			{model = 'slamvan', price = 35000}
		}
	}
}

-- CHECK SKINCHANGER CLIENT MAIN.LUA for matching elements
Config.Uniforms = {

	rang0 = {
		male = {
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 56,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 0,
			pants_1 = 97,   pants_2 = 22,
			shoes_1 = 70,   shoes_2 = 2
		},
		female = {
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 56,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 0,
			pants_1 = 97,   pants_2 = 22,
			shoes_1 = 70,   shoes_2 = 2
		}
	},

	rang1 = {
		male = {
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 56,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 0,
			pants_1 = 97,   pants_2 = 22,
			shoes_1 = 70,   shoes_2 = 2
		},
		female = {
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 56,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 0,
			pants_1 = 97,   pants_2 = 22,
			shoes_1 = 70,   shoes_2 = 2
		}
	},

	rang2 = {
		male = {
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 56,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 0,
			pants_1 = 97,   pants_2 = 22,
			shoes_1 = 70,   shoes_2 = 2
		},
		female = {
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 56,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 0,
			pants_1 = 97,   pants_2 = 22,
			shoes_1 = 70,   shoes_2 = 2
		}
	},

	rang3 = {
		male = {
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 56,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 0,
			pants_1 = 97,   pants_2 = 22,
			shoes_1 = 70,   shoes_2 = 2
		},
		female = {
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 56,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 0,
			pants_1 = 97,   pants_2 = 22,
			shoes_1 = 70,   shoes_2 = 2
		}
	},

	rang4 = {
		male = {
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 56,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 0,
			pants_1 = 97,   pants_2 = 22,
			shoes_1 = 70,   shoes_2 = 2
		},
		female = {
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 56,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 0,
			pants_1 = 97,   pants_2 = 22,
			shoes_1 = 70,   shoes_2 = 2
		}
	},

	rang5 = {
		male = {
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 56,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 0,
			pants_1 = 97,   pants_2 = 22,
			shoes_1 = 70,   shoes_2 = 2
		},
		female = {
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 56,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 0,
			pants_1 = 97,   pants_2 = 22,
			shoes_1 = 70,   shoes_2 = 2
		}
	},

	rang6 = {
		male = {
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 56,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 0,
			pants_1 = 97,   pants_2 = 22,
			shoes_1 = 70,   shoes_2 = 2
		},
		female = {
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 56,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 0,
			pants_1 = 97,   pants_2 = 22,
			shoes_1 = 70,   shoes_2 = 2
		}
	},

	rang7 = {
		male = {
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 56,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 0,
			pants_1 = 97,   pants_2 = 22,
			shoes_1 = 70,   shoes_2 = 2
		},
		female = {
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 56,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 0,
			pants_1 = 97,   pants_2 = 22,
			shoes_1 = 70,   shoes_2 = 2
		}
	},

	rang8 = {
		male = {
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 56,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 0,
			pants_1 = 97,   pants_2 = 22,
			shoes_1 = 70,   shoes_2 = 2
		},
		female = {
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 56,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 0,
			pants_1 = 97,   pants_2 = 22,
			shoes_1 = 70,   shoes_2 = 2
		}
	},

	rang9 = {
		male = {
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 56,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 0,
			pants_1 = 97,   pants_2 = 22,
			shoes_1 = 70,   shoes_2 = 2
		},
		female = {
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 56,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 0,
			pants_1 = 97,   pants_2 = 22,
			shoes_1 = 70,   shoes_2 = 2
		}
	},

	boss = {
		male = {
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 56,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 0,
			pants_1 = 97,   pants_2 = 22,
			shoes_1 = 70,   shoes_2 = 2
		},
		female = {
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 56,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 0,
			pants_1 = 97,   pants_2 = 22,
			shoes_1 = 70,   shoes_2 = 2
		}
	},

	normal_wear = {
		male = {
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 56,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 0,
			pants_1 = 97,   pants_2 = 22,
			shoes_1 = 70,   shoes_2 = 2
		},
		female = {
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 56,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 0,
			pants_1 = 97,   pants_2 = 22,
			shoes_1 = 70,   shoes_2 = 2
		}
	},

	tanktop_wear = {
		male = {
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 238,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 2,
			pants_1 = 97,   pants_2 = 22,
			shoes_1 = 70,   shoes_2 = 2
		},
		female = {
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 56,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 0,
			pants_1 = 97,   pants_2 = 22,
			shoes_1 = 70,   shoes_2 = 2
		}
	},
	
	jacke_wear = {
		male = {
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 251,   torso_2 = 22,
			decals_1 = 0,   decals_2 = 0,
			arms = 0,
			pants_1 = 97,   pants_2 = 22,
			shoes_1 = 70,   shoes_2 = 2
		},
		female = {
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 56,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 0,
			pants_1 = 97,   pants_2 = 22,
			shoes_1 = 70,   shoes_2 = 2
		}
	},
}
