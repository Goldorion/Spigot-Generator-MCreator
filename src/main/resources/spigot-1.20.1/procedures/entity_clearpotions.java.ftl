if(${input$entity} instanceof LivingEntity _entity) player.getActivePotionEffects().forEach(_pe -> player.removePotionEffect(_pe.getType()));