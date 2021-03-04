@EventHandler public void onDisable(PluginDisableEvent event) {
	Map<String, Object> dependencies = new HashMap<>();
	this.executeProcedure(dependencies);
}