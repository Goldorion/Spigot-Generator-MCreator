<#include "procedures.java.ftl">
public class ${name}Procedure implements Listener {
	@EventHandler public void onCropGrowPre(BlockGrowEvent event) {
		<#assign dependenciesCode><#compress>
			<@procedureDependenciesCode dependencies, {
			"x": "event.getBlock().getLocation().getX()",
			"y": "event.getBlock().getLocation().getY()",
			"z": "event.getBlock().getLocation().getZ()",
			"world": "event.getBlock().getWorld()",
			"entity": "event.getPlayer()",
			"blockstate": "event.getBlock().getState()",
			"event": "event"
			}/>
		</#compress></#assign>
		execute(event<#if dependenciesCode?has_content>,</#if>${dependenciesCode});
	}