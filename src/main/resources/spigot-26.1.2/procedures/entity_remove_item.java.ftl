<#include "mcitems.ftl">
if (${input$entity} instanceof Player _player)
	_player.getInventory().remove(${mappedMCItemToItemStackCode(input$item, 1)});