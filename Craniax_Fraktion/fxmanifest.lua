fx_version 'adamant'

game 'gta5'

description 'ESX Jobs'

version '0.0.1'

server_scripts {
	'@async/async.lua',
	'@mysql-async/lib/MySQL.lua',
	'config.lua',
	'server/main.lua',
	'server/classes/c_lager.lua',
	'server/lager.lua',
	'server/esx_lager-sv.lua'
}

client_scripts {
	'config.lua',
	'client/main.lua'
}

ui_page 'html/ui.html'
files {
  'html/ui.html',
  'html/ui.css', 
  'html/ui.js',
  'html/close.png',
  'html/garage.png',
  'html/car.png'
}

dependencies {
	'es_extended'
}


