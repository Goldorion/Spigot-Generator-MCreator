<#-- @formatter:off -->
<#include "procedures.java.ftl">

package ${package}.command;

import org.bukkit.command.Command;
import org.bukkit.entity.Entity;

public class ${name} implements CommandExecutor
{

	@Override
	public boolean onCommand(CommandSender sender, Command cmd, String label, String[] args)
	{
		if(label.equalsIgnoreCase("${data.commandName}"))
		{
			Player player = (Player) sender;
			World world = player.getWorld();

			double x = 0;
			double y = 0;
			double z = 0;

			Entity entity = null;

			if (sender instanceof Entity) {
				entity = (Entity) sender;

				x = entity.getLocation().getX();
				y = entity.getLocation().getX();
				z = entity.getLocation().getX();
			}

			<#if hasProcedure(data.onCommandExecuted)>
			HashMap<String, String> cmdparams = new HashMap<>();
			int[] index = { -1 };
			Arrays.stream(args).forEach(param -> {
				if(index[0] >= 0)
					cmdparams.put(Integer.toString(index[0]), param);
				index[0]++;
			});

			<@procedureOBJToCode data.onCommandExecuted/>
			</#if>
			return true;
		}
		return false;
	}
}
<#-- @formatter:on -->
