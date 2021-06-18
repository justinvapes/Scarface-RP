Config                            = {}
Config.DrawDistance               = 15
Config.MarkerColor                = {r = 120, g = 120, b = 240}
Config.EnablePlayerManagement     = false -- enables the actual car dealer job. You'll need esx_addonaccount, esx_billing and esx_society
Config.ResellPercentage           = 50

Config.Locale                     = 'en'

Config.LicenseEnable = false -- require people to own drivers license when buying vehicles? Only applies if EnablePlayerManagement is disabled. Requires esx_license

-- looks like this: 'LLL NNN'
-- The maximum plate length is 8 chars (including spaces & symbols), don't go past it!
Config.PlateLetters  = 3
Config.PlateNumbers  = 3
Config.PlateUseSpace = true

Config.Zones = {

	ShopEntering = {
		Pos   = vector3(903.78833007812,-1576.4636230469,30.807147979736),
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Type  = 1
	},

	ShopInside = {
		Pos     = vector3(904.88708496094,-1539.4553222656,36.518474578857),
		Size    = {x = 1.5, y = 1.5, z = 1.0},
		Heading = 130.45,
		Type    = -1
	},

	ShopOutside = {
		Pos     = vector3(926.61163330078,-1576.0490722656,30.4954662323),
		Size    = {x = 1.5, y = 1.5, z = 1.0},
		Heading = 88.16,
		Type    = -1
	},

	ResellVehicle = {
		Pos   = vector3(5000, 5080.7, -25.6),
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Type  = 1
	}

}
