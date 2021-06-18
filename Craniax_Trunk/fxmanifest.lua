fx_version 'cerulean'
games { 'gta5' };

name 'RageUI';
description 'Admin Menu'

server_scripts {
  '@async/async.lua',
  '@mysql-async/lib/MySQL.lua',
	'@es_extended/locale.lua',
	'locales/br.lua',
	'locales/de.lua',
	'locales/en.lua',
	'locales/fr.lua',
  'config.lua',
  'server/classes/c_trunk.lua',
  'server/trunk.lua',
  'server/esx_trunk-sv.lua'
}

client_scripts {
    "client/UI/RMenu.lua",
    "client/UI/menu/RageUI.lua",
    "client/UI/menu/Menu.lua",
    "client/UI/menu/MenuController.lua",
    "client/UI/components/*.lua",
    "client/UI/menu/elements/*.lua",
    "client/UI/menu/items/*.lua",
    "client/UI/menu/panels/*.lua",
    "client/UI/menu/windows/*.lua",
	'config.lua',
}

client_scripts {
    'client/example.lua',
	'config.lua',
}





