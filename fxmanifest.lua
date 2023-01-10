fx_version 'bodacious'
game 'gta5'

author 'You'
version '1.0.0'

client_script 'client.lua'
server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server.lua'
}
shared_script 'shared.lua'
shared_script '@es_extended/imports.lua'

ui_page 'ui/index.html'


-- every client-side file still needs to be added to the resource packfile!
files {
    'ui/*',
    'ui/js/*',
    'ui/css/*'
}
