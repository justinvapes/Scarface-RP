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

Config.cardealerStations = {

	cardealer = {

		Blip = {
			Coords  = vector3(-775.61, -240.1, 37.2),
			Sprite  = 60,
			Display = 4,
			Scale   = 1.2,
			Colour  = 29
		},

		Cloakrooms = {
			vector3(-802.62, -200.35, 37.15),
		},

		Armories = {
			vector3(-775.61, -240.1, 37.2)
		},

		Vehicles = {
			{
				Spawner = vector3(-760.08, -237.09, 37.28),
				InsideShop = vector3(-760.02, -232.13, 36.86),
				SpawnPoints = {
					{coords = vector3(-760.02, -232.13, 36.86), heading = 209.52, radius = 6.0}
				}
			}
		},

		BossActions = {
			vector3(-810.63, -205.16, 37.13),
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
			{model = 'towtruck', price = 1},
			{model = 'towtruck2', price = 1},
			{model = 'slamvan', price = 1}
		},

		rang1 = {
			{model = 'towtruck', price = 1},
			{model = 'towtruck2', price = 1},
			{model = 'slamvan', price = 1}
		},

		rang2 = {
			{model = 'towtruck', price = 1},
			{model = 'towtruck2', price = 1},
			{model = 'slamvan', price = 1}
		},

		rang3 = {
			{model = 'towtruck', price = 1},
			{model = 'towtruck2', price = 1},
			{model = 'slamvan', price = 1}
		},

		rang4 = {
			{model = 'towtruck', price = 1},
			{model = 'towtruck2', price = 1},
			{model = 'slamvan', price = 1}
		},

		rang5 = {
			{model = 'towtruck', price = 1},
			{model = 'towtruck2', price = 1},
			{model = 'slamvan', price = 1}
		},

		rang6 = {
			{model = 'towtruck', price = 1},
			{model = 'towtruck2', price = 1},
			{model = 'slamvan', price = 1}
		},

		rang7 = {
			{model = 'towtruck', price = 1},
			{model = 'towtruck2', price = 1},
			{model = 'slamvan', price = 1}
		},

		rang8 = {
			{model = 'towtruck', price = 1},
			{model = 'towtruck2', price = 1},
			{model = 'slamvan', price = 1}
		},

		rang9 = {
			{model = 'towtruck', price = 1},
			{model = 'towtruck2', price = 1},
			{model = 'slamvan', price = 1}
		},

		boss = {
			{model = 'towtruck', price = 1},
			{model = 'towtruck2', price = 1},
			{model = 'slamvan', price = 1}
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
