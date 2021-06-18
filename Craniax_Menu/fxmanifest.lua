fx_version 'cerulean'
games { 'gta5' };

name 'RageUI';
description 'RageUI, and a project specially created to replace the NativeUILua-Reloaded library. This library allows to create menus similar to the one of Grand Theft Auto online.'

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'server/main.lua'
}

client_scripts {
    "client/RMenu.lua",
    "client/menu/RageUI.lua",
    "client/menu/Menu.lua",
    "client/menu/MenuController.lua",
    "client/components/*.lua",
    "client/menu/elements/*.lua",
    "client/menu/items/*.lua",
    "client/menu/panels/*.lua",
    "client/menu/windows/*.lua",

}

client_scripts {
     'AllMenu.lua',
     'ActionsMenu.lua',
}





