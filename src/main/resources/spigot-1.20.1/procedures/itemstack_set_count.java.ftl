<#include "mcitems.ftl">
${mappedMCItemToItemStackCode(input$item, 1)}.setAmount(${opt.toInt(input$amount)});