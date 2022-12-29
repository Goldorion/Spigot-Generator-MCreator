<#-- @formatter:off -->
<#include "procedures.java.ftl">

package ${package}.commands;

import org.bukkit.command.Command;
import org.bukkit.entity.Entity;

public class ${name} implements CommandExecutor {

	@Override
	public boolean onCommand(CommandSender sender, Command cmd, String label, String[] args) {
		if(label.equalsIgnoreCase("${data.commandName}") && sender.hasPermission(${name}.use) {
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
