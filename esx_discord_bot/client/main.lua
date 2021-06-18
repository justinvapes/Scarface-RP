Citizen.CreateThread(function()
    while true do
        -- Replace the functions below with your own ID and asset-names
        -- This is the Application ID (Replace this with you own)
		SetDiscordAppId(818393702526484540)

        -- Here you will have to put the image name for the "large" icon.
		SetDiscordRichPresenceAsset('sf')     
        SetDiscordRichPresenceAssetText('connect scarface-v.cc')
        -- Showname implementation with new Native
        -- Old script: https://github.com/Parow/showname
        
        SetDiscordRichPresenceAction(0, "FiveM", "fivem://connect/45.131.108.89:30120")
        SetDiscordRichPresenceAction(1, "Discord", "https://discord.com/invite/scarface")
        --SetDiscordRichPresenceAction(2, "Scarface Status", "https://status.scarface-v.cc/")

        SetDiscordRichPresenceAssetSmall('sf')
        SetDiscordRichPresenceAssetSmallText('discord.gg/scarface')

        -- Amount of online players (Don't touch)
        local playerCount = #GetActivePlayers()
        
        -- Your own playername (Don't touch)
        local playerName = GetPlayerName(PlayerId())

        -- Set here the amount of slots you have (Edit if needed)
        local maxPlayerSlots = "800"

        -- Sets the string with variables as RichPresence (Don't touch)
        SetRichPresence(string.format("%s - %s/%s", playerName, playerCount, maxPlayerSlots))
        
        -- It updates every one minute just in case.
		Citizen.Wait(60000)
	end
end)
