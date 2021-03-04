<#if generator.map(field$gamerulesnumber, "gamerules") != "null">
	if(world instanceof World) {
        (World) world).setGameRule(${generator.map(field$gamerulesnumber, "gamerules")}, ${input$gameruleValue});
    }
</#if>