<#if generator.map(field$gamerulesnumber, "gamerules") != "null">
	(world.getGameRuleValue(${generator.map(field$gamerulesboolean, "gamerules")}))
<#else>
	0
</#if>