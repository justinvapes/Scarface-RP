Config = {}
Config.Locale = 'en'

Config.Marker = {
	r = 250, g = 0, b = 0, a = 100,  -- red color
	x = 1.0, y = 1.0, z = 1.5,       -- tiny, cylinder formed circle
	DrawDistance = 15.0, Type = 1    -- default circle type, low draw distance due to indoors area
}

Config.policeNumberRequired = 10
Config.TimerBeforeNewRob    = 5400 -- The cooldown timer on a store after robbery was completed / canceled, in seconds

Config.MaxDistance    = 20   -- max distance from the robbary, going any longer away from it will to cancel the robbary
Config.GiveBlackMoney = false -- give black money? If disabled it will give cash instead

Stores = {
	["bank"] = {
		position = { x = 254.11, y = 225.64, z = 101.88 },
		reward = math.random(300000, 500000),
		nameOfStore = "Bank",
		secondsRemaining = 500, -- seconds
		lastRobbed = 0
	}
}
