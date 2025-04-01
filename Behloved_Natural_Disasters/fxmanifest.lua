fx_version 'cerulean'
game 'gta5'

author 'Behloved'
description 'Natural Disaster System for FiveM'
version '1.0.0'

-- Client and Server Scripts
client_scripts {
    'client/client.lua'
}

server_scripts {
    'server/server.lua'
}

-- Ensure you have the proper dependencies if needed
dependencies {
    'baseevents'
}