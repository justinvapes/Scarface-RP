Config = {}
Config.Locale = 'en'

Config.Marker = {
	r = 250, g = 0, b = 0, a = 100,  -- red color
	x = 1.0, y = 1.0, z = 1.5,       -- tiny, cylinder formed circle
	DrawDistance = 15.0, Type = 1    -- default circle type, low draw distance due to indoors area
}

Config.policeNumberRequired = 18
Config.TimerBeforeNewRob    = 10800 -- The cooldown timer on a store after robbery was completed / canceled, in seconds

Config.MaxDistance    = 20   -- max distance from the robbary, going any longer away from it will to cancel the robbary
Config.GiveBlackMoney = false -- give black money? If disabled it will give cash instead

Stores = {
	["humane_labs"] = {
		position = { x = 3560.02, y = 3675.05, z = 28.12 },
		reward = math.random(1000000, 1500000),
		nameOfStore = "Humane Labs",
		secondsRemaining = 500, -- seconds
		lastRobbed = 0
	}
}
