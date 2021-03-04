if(${input$entity} instanceof Player){
	((Player) ${input$entity}).addPotionEffect(new PotionEffect(${generator.map(field$potion, "potions")}, (int) ${input$duration}, (int) ${input$level}));
}