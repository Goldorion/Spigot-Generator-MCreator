/*@int*/(${input$entity} instanceof LivingEntity _livEnt && _livEnt.hasPotionEffect(${generator.map(field$potion, "effects")}) ?
    _livEnt.getPotionEffect(${generator.map(field$potion, "effects")}).getAmplifier() : 0)