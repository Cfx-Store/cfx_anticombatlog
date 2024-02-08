fx_version "cerulean"
game "gta5"
lua54 "yes"

author "CFX Store"
version "0.0.0"

server_scripts {
    "src/server/main.lua"
}

client_scripts {
    "src/client/main.lua"
}

shared_scripts {
    '@ox_lib/init.lua',
    'src/shared/config.lua'
}
        