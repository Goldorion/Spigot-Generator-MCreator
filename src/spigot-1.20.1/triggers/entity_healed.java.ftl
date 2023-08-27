<#include "procedures.java.ftl">
public class ${name}Procedure implements Listener {
	@EventHandler public void onEntityHealed(EntityRegainHealthEvent event) {
		<#assign dependenciesCode><#compress>
			<@procedureDependenciesCode dependencies, {
			"x": "event.getEntity().getLocation().getX()",
			"y": "event.getEntity().getLocation().getY()",
			"z": "event.getEntity().getLocation().getZ()",
			"amount": "event.getAmount()",
			"world": "event.getEntity().getWorld()",
			"entity": "event.getEntity()",
			"droppedexperience": "event.getDroppedExp()",
			"event": "event"
			}/>
		</#compress></#assign>
		execute(event<#if dependenciesCode?has_content>,</#if>${dependenciesCode});
	}