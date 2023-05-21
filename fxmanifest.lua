fx_version 'cerulean'
games      { 'gta5' }

author 'NewWave TEAM'
description 'QBCore Towing'
version 'Bach'

shared_scripts {
    '@qb-core/shared/locale.lua',
    'locales/en.lua',
    'locales/*.lua'
}

server_scripts {
    'config.lua',
    'server/server.lua',
}
client_scripts {
    'config.lua',
    'client/client.lua',
}
