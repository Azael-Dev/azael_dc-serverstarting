fx_version 'cerulean'
game 'gta5'

author 'Azael Dev <contact@azael.dev> (https://www.azael.dev/)'
description 'DC - Server Starting (Announcement)'
version '1.1.3'
url 'https://github.com/Azael-Dev/azael_dc-serverstarting'

lua54 'yes'

server_only 'yes'

server_script {
    'config/server.config.lua',
    'source/server/main.server.lua'
}

dependencies {
    '/server:4664',
    '/onesync'
}
