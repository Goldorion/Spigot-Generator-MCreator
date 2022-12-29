<#if generator.map(field$gamerulesboolean, "gamerules") != "null">
    if(world instanceof World) {
        (World) world).setGameRule(${generator.map(field$gamerulesboolean, "gamerules")}, ${input$gameruleValue});
    }
</#if>