<#-- @formatter:off -->
<#include "procedures.java.ftl">

package ${package}.command;

import org.bukkit.command.Command;

public class ${name} implements CommandExecutor
{

	@Override
	public boolean onCommand(CommandSender sender, Command cmd, String label, String[] args)
	{
		if(label.equalsIgnoreCase("${data.commandName}"))
		{
			<#if hasProcedure(data.onCommandExecuted)>
			HashMap<String, String> cmdparams = new HashMap<>();
			int[] index = { -1 };
			Arrays.stream(ctx.getInput().split("\\s+")).forEach(param -> {
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
