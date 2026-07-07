<#include "mcitems.ftl">
${mappedMCItemToItemStackCode(input$item, 1)}.removeEnchantment(${generator.map(field$enhancement, "enchantments")});