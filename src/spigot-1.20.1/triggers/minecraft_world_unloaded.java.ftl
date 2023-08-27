<#include "procedures.java.ftl">
public class ${name}Procedure implements Listener {
	@EventHandler public void onWorldLoaded(WorldUnload event) {
		<#assign dependenciesCode><#compress>
			<@procedureDependenciesCode dependencies, {
			"world": "event.getWorld()",
			"event": "event"
			}/>
		</#compress></#assign>
		execute(event<#if dependenciesCode?has_content>,</#if>${dependenciesCode});
	}