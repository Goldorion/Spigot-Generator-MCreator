<#include "mcitems.ftl">
if(${input$entity} != null) {
	player.getInventory().addItem(new ItemStack(${mappedMCItemToItemStackCode(input$item)}, (int) ${input$amount}));
}
