fx_version 'bodacious'
game 'gta5'

ui_page 'nui/index.html'

client_scripts {
	'@vrp/lib/utils.lua',
	'config.lua',
	'client.lua'
}

server_scripts {
	'@vrp/lib/utils.lua',
	'server.lua',
	'config.lua'
}

files {
	'nui/*',
	'nui/**/*',
}                            