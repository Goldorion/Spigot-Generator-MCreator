<#if generator.map(field$gamerulesboolean, "gamerules") != "null">
	if(world instanceof World _world)
		_world.setGameRule(${generator.map(field$gamerulesboolean, "gamerules")}, ${input$gameruleValue});
</#if>