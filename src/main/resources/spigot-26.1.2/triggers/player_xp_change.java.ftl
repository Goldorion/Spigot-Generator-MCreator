<#include "procedures.java.ftl">
public class ${name}Procedure implements Listener {
	@EventHandler public void onPlayerXPChange(PlayerExpChangeEvent event) {
		<#assign dependenciesCode><#compress>
			<@procedureDependenciesCode dependencies, {
			"x": "event.getPlayer().getLocation().getX()",
			"y": "event.getPlayer().getLocation().getY()",
			"z": "event.getPlayer().getLocation().getZ()",
			"world": "event.getPlayer().getWorld()",
			"entity": "event.getPlayer()",
			"amount": "event.getAmount()",
			"event": "event"
			}/>
		</#compress></#assign>
		execute(event<#if dependenciesCode?has_content>,</#if>${dependenciesCode});
	}