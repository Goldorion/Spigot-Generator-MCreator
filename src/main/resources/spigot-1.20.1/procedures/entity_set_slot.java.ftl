<#include "mcitems.ftl">
if (${input$entity} instanceof Player _player) {
	final ItemStack _setstack = ${mappedMCItemToItemStackCode(input$slotitem, 1)};
	_setstack.setAmount(${opt.toInt(input$amount)});
		_player.getInventory().setItem(${opt.toInt(input$slotid), _setstack},
}