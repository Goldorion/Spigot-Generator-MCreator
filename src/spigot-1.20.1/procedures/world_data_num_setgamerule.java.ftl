<#if generator.map(field$gamerulesnumber, "gamerules") != "null">
	if(world instanceof World _world)
		_world.setGameRule(${generator.map(field$gamerulesnumber, "gamerules")}, ${input$gameruleValue});
</#if>