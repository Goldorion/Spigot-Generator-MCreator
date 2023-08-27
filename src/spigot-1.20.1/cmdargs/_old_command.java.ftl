<#include "procedures.java.ftl">
HashMap<String, String> cmdparams = new HashMap<>();
int[] index = { -1 };
Arrays.stream(args).forEach(param -> {
	if(index[0] >= 0)
		cmdparams.put(Integer.toString(index[0]), param);
	index[0]++;
});

<@procedureToCode name=procedure dependencies=dependencies/>