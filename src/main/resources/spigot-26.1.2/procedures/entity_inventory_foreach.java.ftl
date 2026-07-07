{
	if (${input$entity} instanceof Player _player) {
		_player.getInventory().forEach(itemstackiterator -> {
			${statement$foreach}
		});
	}
}