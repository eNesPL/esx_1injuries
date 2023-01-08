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

ui_page 'ui/index.html'


-- every client-side file still needs to be added to the resource packfile!
files {
    'ui/*',
    'ui/index.html',
    'ui/js/*.js',
    'ui/css/*.css'
}
