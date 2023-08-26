{
	Entity _ent = ${input$entity};
	Scoreboard _sc = _ent.level().getScoreboard();
	Objective _so = _sc.getObjective(${input$score});
	if (_so == null)
		_so = _sc.addObjective(${input$score}, ObjectiveCriteria.DUMMY, Component.literal(${input$score}), ObjectiveCriteria.RenderType.INTEGER);
	_sc.getOrCreatePlayerScore(_ent.getScoreboardName(), _so).setScore(${opt.toInt(input$value)});
}


if (_ent instanceof Player _player) {
	_player.getScoreboard().registerNewObjective(${input$score}, Criteria.DUMMY, ${input$score}, RenderType.INTEGER);
	_player.getScoreboard().getObjective(${input$score}).getScore(_player.getPlayerListName()).setScore(${opt.toInt(input$value)});
}