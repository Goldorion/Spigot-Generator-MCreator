<#include "mcitems.ftl">
if(${input$entity} instanceof Player _player)
	(_player.getInventory().addItem(new ItemStack(${mappedMCItemToItemStackCode(input$item)}, (int) ${input$amount}));