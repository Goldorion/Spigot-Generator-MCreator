@EventHandler public void onBlockMultiPlace(BlockMultiPlaceEvent event) {
	Entity entity = event.getPlayer();
	World world = event.getBlock().getWorld();
	Map<String, Object> dependencies = new HashMap<>();
	dependencies.put("x",event.getBlock().getLocation().getX());
	dependencies.put("y",event.getBlock().getLocation().getY());
	dependencies.put("z",event.getBlock().getLocation().getZ());
	dependencies.put("px",entity.getLocation().getX());
	dependencies.put("py",entity.getLocation().getY());
	dependencies.put("pz",entity.getLocation().getZ());
	dependencies.put("world",world);
	dependencies.put("entity",entity);
	dependencies.put("event",event);
	this.executeProcedure(dependencies);
}