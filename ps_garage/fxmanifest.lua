fx_version 'adamant'

game 'gta5'

server_scripts {
  '@async/async.lua',
  '@mysql-async/lib/MySQL.lua',
  'server/main.lua',
  'config.lua'
}

client_scripts {
  'client/main.lua',
  'config.lua'
}

ui_page 'html/ui.html'
files {
  'html/ui.html',
  'html/ui.css', 
  'html/*.js',
  'html/close.png',
  'html/garage.png',
  'html/car.png'
}

dependencies {
	'es_extended'
}





