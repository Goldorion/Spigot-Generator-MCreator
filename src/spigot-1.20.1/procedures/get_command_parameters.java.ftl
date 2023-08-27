(new Object(){
	public String getText(){
		String param = (String) cmdparams.get("${field$paramid}");
		return param != null ? param : "";
	}
}.getText())