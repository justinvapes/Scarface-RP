Config = {}

Config.Locale = "de"

Config.DrawDistance = 100.0

Config.RewardMin = 1
Config.RewardMax = 5

Config.WebhookTopTen = true
Config.Webhook = "https://discord.com/api/webhooks/854876036138270740/uiCbqw9FsvU52uNRIamKTkw1jSNWisgvxp_H55jxdRxBr__gghT7_CYfcvdsA8wPinQ7"

Config.Debug = true
Config.MaxSlots = 15
Config.TpBackDistance = 150

Config.SpawnProtection = true
Config.SpawnProtectionTime = 2000

Config.SharedObject = 'esx:getSharedObject'
Config.AmbulanceTriggerEvent = 'scarface_fickdeinemutterduskid:wafanfwopfwfpw'

Config.Blip = { sprite = 303, scale = 0.8 }
Config.Type = 22
Config.Size = { x = 1.5, y = 1.5, z = 1.0 }
Config.Color = { r = 255, g = 0, b = 0 }

Config.BigMarkerType = 1
Config.BigMarkerSize = { x = 300.0, y = 300.0, z = 200.0 }
Config.BigMarkerColor = { r = 255, g = 0, b = 0 }

Config.TpBackAfterReboot = true

Config.EnterMarker = vector3(570.1098, 2796.47, 41.91724)

Config.Positions = {
    ["Würfelpark"] = {
        Dimension = 100,
        SpawnPoints = {
            vector3(97.93, -1011.44, 29.22),
            vector3(227.03, -1055.33, 29.24),
            vector3(227.03, -1056.33, 29.24),
            vector3(225.03, -1055.33, 29.24),
            vector3(228.03, -1055.33, 29.24),
            vector3(296.08, -865.62, 29.14),
            vector3(164.44, -814.01, 31.18),
            vector3(99.93, -1011.44, 29.22),
            vector3(229.03, -1055.33, 29.24),
            vector3(227.03, -1057.33, 29.24),
            vector3(225.03, -1056.33, 29.24),
            vector3(228.03, -1055.33, 29.24),
            vector3(299.08, -865.62, 29.14),
            vector3(164.54, -814.01, 31.18),
            vector3(97.93, -1021.44, 29.22),
            vector3(227.13, -1065.33, 29.24),
            vector3(227.03, -1057.33, 29.24),
            vector3(235.03, -1058.33, 29.24),
            vector3(238.03, -1059.33, 29.24),
            vector3(297.08, -865.62, 29.14)
        },
        MarkerPosition = vector3(195.29, -931.33, 25.7),
    },
    ["Gefängnis"] = {
        Dimension = 100,
        SpawnPoints = {
            vector3(1629.33, 2496.81, 44.56),
            vector3(1622.69, 2561.02, 44.56),
            vector3(1762.322, 2542.14, 44.56),
            vector3(1723.89, 2494.1, 45.56),
            vector3(1692.69, 2471.34, 45.57),
            vector3(1725.89, 2494.1, 45.56),
            vector3(1695.69, 2471.34, 45.57),
            vector3(1619.16, 2570.29, 45.56),
            vector3(1758.79, 2518.91, 45.56),
            vector3(1616.79, 2524.93, 44.56),
            vector3(1630.33, 2496.81, 44.56),
            vector3(1623.69, 2561.02, 44.56),
            vector3(1763.322, 2542.14, 44.56),
            vector3(1724.89, 2494.1, 45.56),
            vector3(1693.69, 2471.34, 45.57),
            vector3(1725.89, 2495.1, 45.56),
            vector3(1695.69, 2472.34, 45.57),
            vector3(1619.16, 2580.29, 45.56),
            vector3(1758.79, 2519.91, 45.56),
            vector3(1616.79, 2525.93, 44.56)
        },
        MarkerPosition = vector3(1679.13, 2535.41, 40.56),
    },
    ["Flugzeug-Friedhof"] = {
        Dimension = 100,
        SpawnPoints = {
            vector3(2409.35, 3034.52, 48.21),
            vector3(2361.51, 3132.52, 48.21),
            vector3(2420.44, 3154.43, 48.21),
            vector3(2423.35, 3112.52, 48.21),
            vector3(2352.51, 3063.52, 48.21),
            vector3(2427.44, 3082.43, 48.21),
            vector3(2410.35, 3034.52, 48.21),
            vector3(2362.51, 3132.52, 48.21),
            vector3(2421.44, 3154.43, 48.21),
            vector3(2424.35, 3112.52, 48.21),
            vector3(2353.51, 3063.52, 48.21),
            vector3(2428.44, 3082.43, 48.21),
            vector3(2408.35, 3034.52, 48.21),
            vector3(2360.51, 3132.52, 48.21),
            vector3(2430.44, 3154.43, 48.21),
            vector3(2433.35, 3112.52, 48.21),
            vector3(2352.61, 3063.52, 48.21),
            vector3(2437.44, 3082.43, 48.21),
            vector3(2362.51, 3063.52, 48.21),
            vector3(2437.44, 3082.43, 48.21)
        },
        MarkerPosition = vector3(2382.6, 3095, 40.15),
    },
}

Config.Weapons = {
    "weapon_pistol50",
    "weapon_bullpuprifle",
}

Config.DisabledKeys = {
    38, -- E
    246, -- Z
    288, -- F1
    170, -- F3
    167, -- F6
    318, -- F5
    73, -- X
    74, -- H
    182, -- L
    311, -- K

}

RegisterNetEvent("btw_ffa:notify")
AddEventHandler("btw_ffa:notify", function(color, title, message)
    TriggerEvent("scarface_notify", color, title, message)
end)
