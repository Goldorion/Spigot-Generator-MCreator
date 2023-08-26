<#-- @formatter:off -->
package ${package}.procedures;

import javax.annotation.Nullable;

<#assign nullableDependencies = []/>
<#list dependencies as dependency>
	<#if dependency.getType(generator.getWorkspace()) != "double"
		&& dependency.getType(generator.getWorkspace()) != "LevelAccessor"
		&& dependency.getType(generator.getWorkspace()) != "ItemStack"
		&& dependency.getType(generator.getWorkspace()) != "BlockState"
		&& dependency.getType(generator.getWorkspace()) != "InteractionResult"
		&& dependency.getType(generator.getWorkspace()) != "boolean"
		&& dependency.getType(generator.getWorkspace()) != "CommandContext<CommandSourceStack>">
		<#assign nullableDependencies += [dependency.getName()]/>
	</#if>
</#list>

<#compress>

<#if trigger_code?has_content>
${trigger_code}
<#else>
public class ${name}Procedure implements Listener{
</#if>

	<#if trigger_code?has_content>
	public static <#if return_type??>${return_type.getJavaType(generator.getWorkspace())}<#else>void</#if> execute(
		<#list dependencies as dependency>
			${dependency.getType(generator.getWorkspace())} ${dependency.getName()}<#if dependency?has_next>,</#if>
		</#list>
	) {
		<#if return_type??>return </#if>execute(null<#if dependencies?has_content>,</#if><#list dependencies as dependency>${dependency.getName()}<#if dependency?has_next>,</#if></#list>);
	}
	</#if>

	<#if trigger_code?has_content>private <#else>public </#if>static <#if return_type??>${return_type.getJavaType(generator.getWorkspace())}<#else>void</#if> execute(
		<#if trigger_code?has_content>@Nullable Event event<#if dependencies?has_content>,</#if></#if>
		<#list dependencies as dependency>
				${dependency.getType(generator.getWorkspace())} ${dependency.getName()}<#if dependency?has_next>,</#if>
		</#list>
	) {
		<#if nullableDependencies?has_content>
			if(
			<#list nullableDependencies as dependency>
			${dependency} == null <#if dependency?has_next>||</#if>
			</#list>
			) return <#if return_type??>${return_type.getDefaultValue(generator.getWorkspace())}</#if>;
		</#if>

		<#list localvariables as var>
			<@var.getType().getScopeDefinition(generator.getWorkspace(), "LOCAL")['init']?interpret/>
		</#list>

		${procedurecode}
	}

}

</#compress>
<#-- @formatter:on -->
