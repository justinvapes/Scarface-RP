Config                      = {}
Config.Locale               = 'de'

Config.Accounts             = {'bank', 'black_money'}
Config.AccountLabels        = {bank = _U('bank'), black_money = _U('black_money')}

Config.EnableSocietyPayouts = false -- pay from the society account that the player is employed at? Requirement: esx_society
Config.DisableWantedLevel   = true
Config.EnableHud            = false -- enable the default hud? Display current job and accounts (black, bank & cash)
Config.EnablePvP            = true -- enable pvp?
Config.MaxWeight            = 22000   -- the max inventory weight without backpack

Config.PaycheckInterval     = 7 * 60000 -- how often to recieve pay checks in milliseconds
Config.CoordsSyncInterval   = 1 * 30000 -- how often to sync coords with server in milliseconds

Config.EnableDebug          = false
