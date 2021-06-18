fx_version 'adamant'
game 'gta5'

author 'btwlouis'
description 'FFA ESX based. Made by Louιs#5781'
version '1.0.0'

client_scripts {
    'locale.lua',
    'config.lua',
    'client/*.lua'
}

server_scripts { 
    'locale.lua',
    'config.lua',
    '@mysql-async/lib/MySQL.lua',
    'server/*.lua'
}

export 'IsInsideZone'

