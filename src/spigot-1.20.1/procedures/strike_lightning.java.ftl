<#include "mcelements.ftl">
<#if (field$effectOnly!false)?lower_case == "true">
world.strikeLightningEffect(${toBlockPos(input$x,input$y,input$z)});
<#else>
world.strikeLightning(${toBlockPos(input$x,input$y,input$z)});
</#if>