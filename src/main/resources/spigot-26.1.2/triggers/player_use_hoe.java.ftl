<#include "procedures.java.ftl">
public class ${name}Procedure implements Listener {
	@EventHandler public void onPlayerLeftClick(PlayerInteractEvent event) {
		if (event.getAction() == org.bukkit.event.block.Action.LEFT_CLICK_BLOCK) {
			<#assign dependenciesCode><#compress>
				<@procedureDependenciesCode dependencies, {
				"x": "event.getHarvestedBlock().getLocation().getX()",
				"y": "event.getHarvestedBlock().getLocation().getY()",
				"z": "event.getHarvestedBlock().getLocation().getZ()",
				"world": "event.getHarvestedBlock().getWorld()",
				"entity": "event.getPlayer()",
				"event": "event"
				}/>
			</#compress></#assign>
			execute(event<#if dependenciesCode?has_content>,</#if>${dependenciesCode});
		}
	}