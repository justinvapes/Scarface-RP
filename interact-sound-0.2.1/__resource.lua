
------
-- InteractSound by Scott
-- Verstion: v0.0.1
------

-- Manifest Version
resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'

-- Client Scripts
client_script 'client/main.lua'

-- Server Scripts
server_script 'server/main.lua'

-- NUI Default Page
ui_page('client/html/index.html')

-- Files needed for NUI
-- DON'T FORGET TO ADD THE SOUND FILES TO THIS!
files({
    'client/html/index.html',
    -- Begin Sound Files Here...
    -- client/html/sounds/ ... .ogg
    'client/html/sounds/buy.ogg',
	'client/html/sounds/betup.ogg',
	'client/html/sounds/PlayCard.ogg',
	'client/html/sounds/ruletka.ogg',
	'client/html/sounds/shisha.ogg',
	'client/html/sounds/essen.ogg',
	'client/html/sounds/puton.ogg',
	'client/html/sounds/smoke.ogg',
	'client/html/sounds/trinken.ogg',
	'client/html/sounds/unpack.ogg',
	'client/html/sounds/wewish.ogg',
    'client/html/sounds/demo.ogg'
})


