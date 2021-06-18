fx_version 'cerulean'
games { 'gta5' };

name 'RageUI';
description 'Admin Menu'

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'server/main.lua',
    'config.lua'
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

}

client_scripts {
     'client/example.lua',
     'config.lua'
}