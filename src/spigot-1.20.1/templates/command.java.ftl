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
<#include "procedures.java.ftl">

package ${package}.commands;

import org.bukkit.command.Command;
import org.bukkit.entity.Entity;

public class ${name} implements CommandExecutor {

	@Override
	public boolean onCommand(CommandSender sender, Command cmd, String label, String[] args) {
		if(label.equalsIgnoreCase("${data.commandName}") && sender.hasPermission("${data.commandName}.use")) {
			double x = 0;
			double y = 0;
			double z = 0;

			Entity entity = null;

			World world = null;

			if (sender instanceof Entity) {
				entity = (Entity) sender;

				x = entity.getLocation().getX();
				y = entity.getLocation().getX();
				z = entity.getLocation().getX();

				world = entity.getWorld();


			} else if (sender instanceof BlockCommandSender) {
				x = ((BlockCommandSender) sender).getBlock().getLocation().getX();
				y = ((BlockCommandSender) sender).getBlock().getLocation().getX();
				z = ((BlockCommandSender) sender).getBlock().getLocation().getX();

				world = ((BlockCommandSender) sender).getBlock().getWorld();
			}

			${argscode}

			return true;
		}
		return false;
	}
}
<#-- @formatter:on -->
