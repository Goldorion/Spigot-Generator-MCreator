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
package ${package}.init;

import org.bukkit.enchantments.Enchantment;

public class ${JavaModName}Enchantments {

	public static void register() {
	    <#list enchantments as enchantment>
	        Enchantment.registerEnchantment(new ${enchantment.getModElement().getName()}Enchantment());
	    </#list>
	}
}
<#-- @formatter:on -->
