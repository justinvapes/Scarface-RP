Config	=	{}

Config.CheckOwnership = false -- If true, Only owner of vehicle can store items in trunk.
Config.AllowPolice = true -- If true, police will be able to search players' trunks.

Config.Locale   = 'en'

 -- Limit, unit can be whatever you want. Originally grams (as average people can hold 25kg)
Config.Limit = 25000

-- Default weight for an item:
	-- weight == 0 : The item do not affect character inventory weight
	-- weight > 0 : The item cost place on inventory
	-- weight < 0 : The item add place on inventory. Smart people will love it.
Config.DefaultWeight = 1000

Config.localWeight = {
    WEAPON_NIGHTSTICK       = 500,
    WEAPON_STUNGUN          = 1000,
    WEAPON_FLASHLIGHT       = 500,
    WEAPON_FLAREGUN         = 1000,
    WEAPON_FLARE            = 1000,
    WEAPON_COMBATPISTOL     = 2500,
    WEAPON_HEAVYPISTOL      = 4000,
    WEAPON_ASSAULTSMG       = 7000,
    WEAPON_COMBATPDW        = 7000,
    WEAPON_BULLPUPRIFLE     = 8000,
    WEAPON_PUMPSHOTGUN      = 8000,
    WEAPON_BULLPUPSHOTGUN   = 10000,
    WEAPON_CARBINERIFLE     = 10000,
    WEAPON_ADVANCEDRIFLE    = 10000,
    WEAPON_MARKSMANRRIFLE   = 15000,
    WEAPON_SNIPERRIFLE      = 15000,
    WEAPON_FIREEXTINGUISHER = 1500, 
    GADGET_PARACHUTE        = 5000,
    WEAPON_BAT              = 1500,
    WEAPON_PISTOL           = 5000,
    money                   = 10,
	black_money             = 10
}

Config.VehicleLimit = {
    [0] = 30000, --Compact
    [1] = 40000, --Sedan
    [2] = 100000, --SUV
    [3] = 40000, --Coupes
    [4] = 40000, --Muscle
    [5] = 25000, --Sports Classics
    [6] = 40000, --Sports
    [7] = 5000, --Super
    [8] = 0, --Motorcycles
    [9] = 150000, --Off-road
    [10] = 800000, --Industrial
    [11] = 100000, --Utility
    [12] = 150000, --Vans
    [13] = 0, --Cycles
    [14] = 100000, --Boats
    [15] = 350000, --Helicopters
    [16] = 0, --Planes
    [17] = 40000, --Service
    [18] = 350000, --Emergency
    [19] = 1000000, --Military
    [20] = 350000, --Commercial
    [21] = 0, --Trains

}

Config.VehicleModel = {

    rallytruck  = 1500000, --Commercial
    armarello  = 1000000, --Commercial
    hauler  = 1000000, --Commercial
    ramvan  = 1000000, --Commercial
    phantom  = 800000, --Commercial
    phantomhd  = 800000, --Commercial
    vnl780  = 4000000, --Commercial
    guardian    = 700000, --Vans
    foxmans2 = 1600000, --Commercial
    rmodrs6 = 1440000, --Commercial
    rrghost21 = 1600000,--Commercial
    s560m19 = 2000000, --Commercial
    unimog    = 5500000,
    gle53    = 1300000,
    gls63    = 1600000,
    demonhawkk  = 700000,
    nh90  = 2000000,
    brz13 = 1000000,
    clssb = 1600000,
    rs666 = 1600000,
    xxxxx = 2000000,
    s63   = 2000000
}

Config.VehiclePlate = {
	taxi        = "TAXI",
	cop         = "LSPD",
	ambulance   = "EMS0",
	mecano	    = "MECA",
}
