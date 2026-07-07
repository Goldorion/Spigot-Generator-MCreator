if(${input$entity} instanceof Player _player)
	_player.playSound(_player.getLocation(), Sound.valueOf("${generator.map(field$sound, "sounds")}, (float)${input$level}, (float)${input$pitch}"))