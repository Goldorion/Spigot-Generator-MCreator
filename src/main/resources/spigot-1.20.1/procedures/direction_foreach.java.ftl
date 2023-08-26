Arrays.stream(BlockFace.values()).filter(BlockFace::isCartesian).forEach(directioniterator -> {
	${statement$foreach}
});