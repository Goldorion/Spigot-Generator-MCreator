<#include "mcitems.ftl">
world.dropItemNaturally(${toBlockPos(input$x,input$y,input$z)}, ${mappedMCItemToItemStackCode(input$block, 1)}, item -> {
	item.setPickupDelay(${opt.toInt(input$pickUpDelay!10)});
	<#if (field$despawn!true)?lower_case == "false">
	item.setUnlimitedLifetime(true);
	</#if>
});