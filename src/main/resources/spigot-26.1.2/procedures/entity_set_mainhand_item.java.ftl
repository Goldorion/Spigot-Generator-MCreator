<#include "mcitems.ftl">
if (${input$entity} instanceof Player _entity) {
	ItemStack _setstack = ${mappedMCItemToItemStackCode(input$item, 1)};
	_setstack.setAmount(${opt.toInt(input$amount)});
	_entity.getInventory().setItemInMainHand(_setstack);
}