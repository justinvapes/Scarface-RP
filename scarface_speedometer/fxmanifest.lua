fx_version 'adamant'
game 'gta5'

description 'Car Hud UI'

ui_page 'html/ui.html'

client_scripts {
	'@es_extended/locale.lua',
	'config.lua',
	'client.lua',
}

server_scripts {
	'server.lua',
	'@mysql-async/lib/MySQL.lua'
}

files {
	'html/ui.html',
	'html/rescale.js',
	'html/main.js'
}