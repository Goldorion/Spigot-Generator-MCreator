<#if generator.map(field$gamerulesboolean, "gamerules") != "null">
	(world.getGameRuleValue(${generator.map(field$gamerulesboolean, "gamerules")}))
<#else>
	(false)
</#if>