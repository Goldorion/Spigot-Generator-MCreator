<#include "procedures.java.ftl">
public class ${name}Procedure implements Listener {
	@EventHandler public void onPlayerRightClickAir(PlayerInteractEvent event) {
		if (event.getAction() == org.bukkit.event.block.Action.RIGHT_CLICK_AIR) {
			<#assign dependenciesCode><#compress>
				<@procedureDependenciesCode dependencies, {
				"x": "event.getPlayer().getLocation().getX()",
				"y": "event.getPlayer().getLocation().getY()",
				"z": "event.getPlayer().getLocation().getZ()",
				"world": "event.getPlayer().getWorld()",
				"entity": "event.getPlayer()",
				"itemstack": "event.getItem()",
				"event": "event"
				}/>
			</#compress></#assign>
			execute(event<#if dependenciesCode?has_content>,</#if>${dependenciesCode});
		}
	}