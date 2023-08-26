<#include "procedures.java.ftl">
public class ${name}Procedure implements Listener {
	@EventHandler public void onEnable(PluginEnableEvent event) {
		<#assign dependenciesCode><#compress>
			<@procedureDependenciesCode dependencies, {
			"event": "event"
			}/>
		</#compress></#assign>
		execute(event<#if dependenciesCode?has_content>,</#if>${dependenciesCode});
	}