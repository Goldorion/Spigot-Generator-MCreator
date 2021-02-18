<#include "procedures.java.ftl">
<@procedureToRetvalCode name=procedure dependencies=dependencies />
<#if type == "ITEMSTACK">/*@ItemStack*/</#if><@procedureToRetvalCode name=procedure dependencies=dependencies />
