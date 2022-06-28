@EventHandler public void onEnable(PluginEnableEvent event) {
	Map<String, Object> dependencies = new HashMap<>();
	this.executeProcedure(dependencies);
}