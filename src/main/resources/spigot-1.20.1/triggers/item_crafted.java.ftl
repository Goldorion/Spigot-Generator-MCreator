<#include "procedures.java.ftl">
import org.bukkit.entity.Item;

public class ${name}Procedure implements Listener {
	@EventHandler public void onItemCrafted(CraftItemEvent event) {
		<#assign dependenciesCode><#compress>
			<@procedureDependenciesCode dependencies, {
			"x": "event.getEntity().getLocation().getX()",
			"y": "event.getEntity().getLocation().getY()",
			"z": "event.getEntity().getLocation().getZ()",
			"world": "event.getEntity().getWorld()",
			"entity": "event.getEntity()",
			"itemstack": "event.getRecipe().getResult()",
			"event": "event"
			}/>
		</#compress></#assign>
		execute(event<#if dependenciesCode?has_content>,</#if>${dependenciesCode});
	}