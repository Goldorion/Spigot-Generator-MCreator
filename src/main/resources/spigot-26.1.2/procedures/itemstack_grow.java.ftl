<#include "mcitems.ftl">
${mappedMCItemToItemStackCode(input$item, 1)}.setAmount(${mappedMCItemToItemStackCode(input$item, 1)}.getAmount() + ${opt.toInt(input$amount)});