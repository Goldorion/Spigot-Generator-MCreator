<#include "mcitems.ftl">
if(${input$entity} instanceof Player) {
	((Player) ${input$entity}).getInventory().addItem(new ItemStack(${mappedMCItemToItemStackCode(input$item)}, (int) ${input$amount}));
}