Config                            = {}

Config.Locale             = 'de'

Config.Openkey = 288
Config.NeedItem = true

Config.CustomNotification = false

-- If you're server is slow, make this higher
Config.FirstTimeSQL = 2000
Config.MysqlWaitingTime = 750
Config.UserDataWaitingTime = 750
Config.RecentMessagesWait = 100

-- ESX Events DONT TOUCH THIS IF YOU DONT EXACTLY KNOW WHAT THESE DOES
Config.esxgetSharedObjectevent = 'esx:getSharedObject'
Config.esxprefix = "esx:"
Config.esxprefix2 = "esx_"

-- Exports Config
Config.MumbleVoipFolderName = "mumble-voip"
Config.PMAVOICEFolderName = "pma-voice"
Config.SaltychatFolderName = 'saltychat'

-- Wallpaper
Config.backgroundurl = "https://cdn.discordapp.com/attachments/836265261530349659/854493712213082122/h_Wall_1.png"
Config.darkbackgroundurl = "https://cdn.discordapp.com/attachments/836265261530349659/854493716764033045/h_Wall_2.png"

--[[
Phone Numer
Nummer will be like [prefix-number]
The number will be randomly generated between the lower and higher number
]] 

Config.Prefix = true
-- Ignore this if Prefix = false
Config.LowerPrefix = 100
Config.HigherPrefix = 999

Config.LowerNumber = 1000
Config.HigherNumber = 9999

-- Voice Chat [only 1 can be true]
Config.TokoVoip = false
Config.PMAVoice = false
Config.MumbleVoip = false
Config.SaltyChat = true


-- Radio
Config.blockedchannels = 5 -- Number how much Channels are reserved for the listed fractions below

-- These Jobs have access to the blocked channels 
Config.Access = {
    {
        frequenz = 1,
        job = "police", "fib",
        joblabel = "LSPD"
    },
    {
        frequenz = 1,
        job = "ambulance", "ambulance", "fib",
        joblabel = "Ambulance"
    },

    {
        frequenz = 1,
        job = "fib",
        joblabel = "FIB"
    },

    {
        frequenz = 2,
        job = "police",
        joblabel = "LSPD"
    },

    {
        frequenz = 3,
        job = "police",
        joblabel = "LSPD"
    },

    {
        frequenz = 4,
        job = "police",
        joblabel = "LSPD"
    },

    {
        frequenz = 10,
        job = "police",
        joblabel = "LSPD"
    },

    {
        frequenz = 2,
        job = "lssd",
        joblabel = "LSSD"
    },

    {
        frequenz = 1,
        job = "lssd",
        joblabel = "LSSD"
    },
    

    {
        frequenz = 3,
        job = "lssd",
        joblabel = "LSSD"
    },

    {
        frequenz = 10,
        job = "lssd",
        joblabel = "LSSD"
    },

    {
        frequenz = 4,
        job = "lssd",
        joblabel = "LSSD"
    },

    {
        frequenz = 2,
        job = "ambulance",
        joblabel = "Ambulance"
    },

    {
        frequenz = 2,
        job = "ambulance",
        joblabel = "Ambulance"
    },

    {
        frequenz = 2,
        job = "fib",
        joblabel = "FIB"
    },

    {
        frequenz = 3,
        job = "fib",
        joblabel = "FIB"
    },

    {
        frequenz = 4,
        job = "fib",
        joblabel = "FIB"
    },

    {
        frequenz = 5,
        job = "fib",
        joblabel = "FIB"
    },

    {
        frequenz = 6,
        job = "fib",
        joblabel = "FIB"
    },

    {
        frequenz = 7,
        job = "fib",
        joblabel = "FIB"
    },

    {
        frequenz = 8,
        job = "fib",
        joblabel = "FIB"
    },

    {
        frequenz = 2,
        job = "ambulance",
        joblabel = "Ambulance"
    },

    {
        frequenz = 1,
        job = "ambulance",
        joblabel = "Ambulance"
    },

    {
        frequenz = 4,
        job = "ambulance",
        joblabel = "Ambulance"
    },
  
    {
        frequenz = 1,
        job = "army",
        joblabel = "army"
    },

    {
        frequenz = 2,
        job = "army",
        joblabel = "army"
    },

    {
        frequenz = 3,
        job = "army",
        joblabel = "army"
    },

    {
        frequenz = 4,
        job = "army",
        joblabel = "army"
    },

    {
        frequenz = 10,
        job = "army",
        joblabel = "army"
    },
}


Config.Debug = false