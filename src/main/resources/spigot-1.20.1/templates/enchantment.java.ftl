<#--
 # This file is part of Spigot-Generator-MCreator.
 # Copyright (C) 2020-2023, Goldorion, opensource contributors
 #
 # Spigot-Generator-MCreator is free software: you can redistribute it and/or modify
 # it under the terms of the GNU Lesser General Public License as published by
 # the Free Software Foundation, either version 3 of the License, or
 # (at your option) any later version.
 # Spigot-Generator-MCreator is distributed in the hope that it will be useful,
 # but WITHOUT ANY WARRANTY; without even the implied warranty of
 # MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 # GNU Lesser General Public License for more details.
 #
 # You should have received a copy of the GNU Lesser General Public License
 # along with Spigot-Generator-MCreator.  If not, see <https://www.gnu.org/licenses/>.
-->

<#-- @formatter:off -->
<#include "mcitems.ftl">

package ${package}.enchantment;

public class ${name}Enchantment extends Enchantment {

	public ${name}Enchantment() {
	    super(new NamespacedKey(${JavaModName}.plugin, "${registryname}"));
	}

	@Override public String getName() {
	    return "${data.name}";
	}

	@Override public int getStartLevel() {
		return ${data.minLevel};
	}

	@Override public int getMaxLevel() {
		return ${data.maxLevel};
	}

	@Override public EnchantmentTarget getItemTarget() {
		return EnchantmentTarget.${generator.map(data.type, "enchantmenttypes")};
	}

    @Override public boolean conflictsWith(Enchantment ench) {
        <#if data.compatibleEnchantments?has_content>
            return <#if data.excludeEnchantments>this != ench && </#if><#if !data.excludeEnchantments>!</#if>List.of(
                <#list data.compatibleEnchantments as compatibleEnchantment>${compatibleEnchantment}<#sep>,</#list>).contains(ench);
		<#else>
		    return false;
		</#if>
	}

	@Override public boolean canEnchantItem(ItemStack itemstack) {
	    <#if data.compatibleItems?has_content>
		    return <#if data.excludeItems>!</#if>${mappedMCItemsToIngredient(data.compatibleItems)}.test(itemstack);
		<#else>
		    return false;
		</#if>
	}

	@Override public boolean isTreasure() {
		return ${data.isTreasureEnchantment};
	}

	@Override public boolean isCursed() {
		return ${data.isCurse};
	}
}
<#-- @formatter:on -->