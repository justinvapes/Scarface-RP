Config                            = {}

Config.Teleporters = {
	['eclipse'] = {
		['Job'] = 'none',
		['Enter'] = { 
			['x'] = -769.04, 
			['y'] = 336.76, 
			['z'] = 242.38,
			['Information'] = '~g~[E] Erdgeschoss betreten',
		},
		['Exit'] = {
			['x'] = -773.78, 
			['y'] = 306.2, 
			['z'] = 84.7, 
			['Information'] = '~g~[E] Obergeschoss betreten' 
		}
	},
	['humanelabs'] = {
		['Job'] = 'none',
		['Enter'] = { 
			['x'] = 3540.53, 
			['y'] = 3675.36, 
			['z'] = 27.22,
			['Information'] = '~g~[E] Untergeschoss betreten',
		},
		['Exit'] = {
			['x'] = 3540.77, 
			['y'] = 3675.79, 
			['z'] = 20.09, 
			['Information'] = '~g~[E] Obergeschoss betreten' 
		}
	},
	['fib2'] = {
		['Job'] = 'fib',
		['Enter'] = { 
			['x'] = 139.33, 
			['y'] = -770.57, 
			['z'] = 44.85,
			['Information'] = '~g~[E] Dach Etage betreten',
		},
		['Exit'] = {
			['x'] = 156.75, 
			['y'] = -757.72, 
			['z'] = 257.20, 
			['Information'] = '~g~[E] Erdgeschoss betreten' 
		}
	},
	['ambulance2'] = {
		['Job'] = 'ambulance',
		['Enter'] = { 
			['x'] = -493.6, 
			['y'] = -327.13, 
			['z'] = 41.41,
			['Information'] = '~g~[E] Obergeschoss betreten',
		},
		['Exit'] = {
			['x'] = -493.54, 
			['y'] = -327.17, 
			['z'] = 68.8, 
			['Information'] = '~g~[E] Erdgeschoss betreten' 
		}
	},
	['ambulance1'] = {
		['Job'] = 'ambulance',
		['Enter'] = { 
			['x'] = -418.82, 
			['y'] = -344.69, 
			['z'] = 23.33,
			['Information'] = '~g~[E] Krankenhaus betreten',
		},
		['Exit'] = {
			['x'] = -436.12, 
			['y'] = -359.77, 
			['z'] = 34.05, 
			['Information'] = '~g~[E] Garage betreten' 
		}
	},
	['army'] = {
		['Job'] = 'army',
		['Enter'] = { 
			['x'] = -2360.79, 
			['y'] = 3249.45, 
			['z'] = 31.91,
			['Information'] = '~g~[E] Obergeschoss betreten',
		},
		['Exit'] = {
			['x'] = -2360.67, 
			['y'] = 3249.46, 
			['z'] = 91.92, 
			['Information'] = '~g~[E] Erdgeschoss betreten' 
		}
	},
	['weed'] = {
		['Job'] = 'none',
		['Enter'] = { 
			['x'] = 1741.05, 
			['y'] = -1606.75, 
			['z'] = 115.94,
			['Information'] = '~g~[E] Labor betreten',
		},
		['Exit'] = {
			['x'] = 1065.98, 
			['y'] = -3183.04, 
			['z'] = -39.183, 
			['Information'] = '~g~[E] Labor verlassen' 
		}
	},
	['lspd'] = {
		['Job'] = 'police',
		['Enter'] = { 
			['x'] = 604.84, 
			['y'] = 5.47, 
			['z'] = 96.97,
			['Information'] = '~g~[E] Dach betreten',
		},
		['Exit'] = {
			['x'] = 565.91, 
			['y'] = 4.86, 
			['z'] = 102.23, 
			['Information'] = '~g~[E] Dach verlassen' 
		}
	},

	['fib'] = {
		['Job'] = 'fib',
		['Enter'] = { 
			['x'] = 136.09, 
			['y'] = -761.7, 
			['z'] = 44.85,
			['Information'] = '~g~[E] Obergeschoss betreten',
		},
		['Exit'] = {
			['x'] = 136.11, 
			['y'] = -761.81, 
			['z'] = 241.25, 
			['Information'] = '~g~[E] Erdgeschoss betreten' 
		}
	},
	
	['fib_garage'] = {
		['Job'] = 'fib',
		['Enter'] = { 
			['x'] = 139.02, 
			['y'] = -762.7, 
			['z'] = 44.85,
			['Information'] = '~g~[E] FIB Garage betreten',
		},
		['Exit'] = {
			['x'] = 87.58, 
			['y'] = -727.61, 
			['z'] = 32.23, 
			['Information'] = '~g~ [E] FIB Tower betreten' 
		}
	},
	
	['fib_heli'] = {
		['Job'] = 'fib',
		['Enter'] = { 
			['x'] = 131.02, 
			['y'] = -762.66, 
			['z'] = 241.25,
			['Information'] = '~g~[E] FIB Dach betreten',
		},
		['Exit'] = {
			['x'] = 141.22, 
			['y'] = -735.39, 
			['z'] = 261.95, 
			['Information'] = '~g~ [E] FIB Tower betreten' 
		}
	},
	
	['iaa_heli'] = {
		['Job'] = 'iaa',
		['Enter'] = { 
			['x'] = 110.197, 
			['y'] = -637.24, 
			['z'] = 43.24,
			['Information'] = '~g~[E] Betreten IAA Geb�ude',
		},
		['Exit'] = {
			['x'] = 2154.9, 
			['y'] = 2920.97, 
			['z'] = -62.9, 
			['Information'] = '~g~ [E] Verlassen IAA Geb�ude' 
		}
	},
	
	['iaa_garage'] = {
		['Job'] = 'iaa',
		['Enter'] = { 
			['x'] = 2142.23, 
			['y'] = 2923.92, 
			['z'] = -62.9,
			['Information'] = '~g~[E] Betreten Garage',
		},
		['Exit'] = {
			['x'] = 124.84, 
			['y'] = -740.72, 
			['z'] = 32.23, 
			['Information'] = '~g~ [E] Verlassen Garage' 
		}
	},
	['ambulance_pat'] = {
		['Job'] = 'ambulance',
		['Enter'] = { 
			['x'] = 331.73, 
			['y'] = -595.50, 
			['z'] = 42.28,
			['Information'] = '~g~[E] Betreten Helipad',
		},
		['Exit'] = {
			['x'] = 338.57, 
			['y'] = -583.84, 
			['z'] = 73.17, 
			['Information'] = '~g~ [E] Verlassen Helipad' 
		}
	},

	['pascha_hotel'] = {
		['Job'] = 'none',
		['Enter'] = { 
			['x'] = -1192.6684570312,
			['y'] = -215.43472290039, 
			['z'] = 37.944862365723-0.55,
			['Information'] = '~g~[E] Betreten Hotel Pascha',
		},
		['Exit'] = {
			['x'] = -1392.667, 
			['y'] = -480.4736, 
			['z'] = 72.04217, 
			['Information'] = '~g~ [E] Verlassen Hotel Pascha' 
		}
	},
	
	['krankenhaus_unten'] = {
		['Job'] = 'none',
		['Enter'] = { 
			['x'] = 344.3745, 
			['y'] = -586.288, 
			['z'] = 28.7968-0.95,
			['Information'] = '~g~[E] Aufzug nach Oben',
		},
		['Exit'] = {
			['x'] = 330.28320, 
			['y'] = -601.1837, 
			['z'] = 43.284-0.96, 
			['Information'] = '~g~ [E] Aufzug nach Unten' 
		}
	},
	
	['krankenhaus_garage'] = {
		['Job'] = 'ambulance',
		['Enter'] = { 
			['x'] = 341.4187, 
			['y'] = -581.026, 
			['z'] = 28.796-0.95,
			['Information'] = '~g~[E] Aufzug nach Oben',
		},
		['Exit'] = {
			['x'] = 327.1333, 
			['y'] = -603.787, 
			['z'] = 43.2840-0.96, 
			['Information'] = '~g~ [E] Aufzug zur Garage' 
		}
	},
	['krankenhaus_heli'] = {
		['Job'] = 'ambulance',
		['Enter'] = { 
			['x'] = -443.99, 
			['y'] = -331.64, 
			['z'] = 78.168,
			['Information'] = '~g~[E] Aufzug zur Lobby',
		},
		['Exit'] = {
			['x'] = -487.439, 
			['y'] = -328.261, 
			['z'] = 42.3, 
			['Information'] = '~g~ [E] Aufzug zur Dach' 
		}
	},
	['krankenhaus_op'] = {
		['Job'] = 'ambulance',
		['Enter'] = { 
			['x'] = -452.52206420898, 
			['y'] = -288.47439575195, 
			['z'] = -130.850,
			['Information'] = '~g~[E] Aufzug zur Lobby',
		},
		['Exit'] = {
			['x'] = -452.6757, 
			['y'] = -288.57, 
			['z'] = 34.94, 
			['Information'] = '~g~ [E] Aufzug zum OP' 
		}
	},
	--Next here
}


