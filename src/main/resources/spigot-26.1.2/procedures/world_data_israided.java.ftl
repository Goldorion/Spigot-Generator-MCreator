<#include "mcelements.ftl">
(world.getRaids().stream().filter(_r -> _r.getLocation().equals(${toBlockPos(input$x,input$y,input$z)})).toList().isEmpty())