if(${entity} instanceof LivingEntity _entity)
	(_entity.addPotionEffect(new PotionEffect(${generator.map(field$potion, "potions")},(int) ${input$duration},(int) ${input$level}, ${input$ambient}, ${input$particles}));