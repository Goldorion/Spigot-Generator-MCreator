if(player != null){
	player.addPotionEffect(new PotionEffect(${generator.map(field$potion, "potions")},(int) ${input$duration},(int) ${input$level}, ${input$ambient}, ${input$particles}));
}