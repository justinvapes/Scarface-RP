resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'littlebot'



-- Server
server_scripts {
	'@es_extended/locale.lua',
	'config.lua',
	'server/main.lua'
}

client_scripts {
    'client/main.lua'
}

server_export "sendToDiscord"


