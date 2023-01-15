fx_version 'bodacious'
game 'gta5'

author 'eNes'
version '1.0.0'

client_script 'client.lua'
server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server.lua'
}
shared_script 'shared.lua'
shared_script '@es_extended/imports.lua'
