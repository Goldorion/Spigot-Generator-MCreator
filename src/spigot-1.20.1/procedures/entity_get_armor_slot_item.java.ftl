<#include "mcelements.ftl">
/*@ItemStack*/(${input$entity} instanceof HumanEntity _entGetArmor ? _entGetArmor.getInventory().getItem(${toArmorSlot(input$slotid)}):ItemStack.EMPTY)