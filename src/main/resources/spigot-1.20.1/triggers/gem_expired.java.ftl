<#include "procedures.java.ftl">
import org.bukkit.entity.Item;

public class ${name}Procedure implements Listener {
	@EventHandler public void onItemDespawn(ItemDespawnEvent event) {
		<#assign dependenciesCode><#compress>
			<@procedureDependenciesCode dependencies, {
			"x": "event.getLocation().getX()",
			"y": "event.getLocation().getY()",
			"z": "event.getLocation().getZ()",
			"world": "event.getEntity().getWorld()",
			"entity": "event.getEntity()",
			"itemstack": "event.getEntity().getItemStack()",
			"event": "event"
			}/>
		</#compress></#assign>
		execute(event<#if dependenciesCode?has_content>,</#if>${dependenciesCode});
	}