if(${input$entity} instanceof Player _player)
	_player.setGameMode(GameMode.${generator.map(field$gamemode, "gamemodes")})