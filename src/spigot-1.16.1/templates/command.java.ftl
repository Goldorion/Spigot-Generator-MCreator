<#-- @formatter:off -->
<#include "procedures.java.ftl">

package ${package}.command;

import org.bukkit.command.Command;

public class ${name} implements CommandExecutor
{

	@Override
	public boolean onCommand(CommandSender entity, Command cmd, String label, String[] args)
	{
		if(label.equalsIgnoreCase("${data.commandName}"))
		{
			if(entity.hasPermission("${data.commandName}.use"))

					{
						<@procedureOBJToCode data.onCommandExecuted/>

					return true;
				}
		}
		return false;
	}
}
<#-- @formatter:on -->
