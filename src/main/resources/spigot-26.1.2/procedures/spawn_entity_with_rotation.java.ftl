<#assign entity = generator.map(field$entity, "entities", 1)!"null">
<#if entity != "null">
	if(world instanceof World)
		world.spawnEntity(new Location(world, ${input$x}, ${input$y}, ${input$z}), ${entity}, (float) ${input$yaw}, (float) ${input$pitch}))
</#if>