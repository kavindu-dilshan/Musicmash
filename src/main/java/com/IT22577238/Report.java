package com.IT22577238;

public class Report {
	
	private int id;
	private String name;
	private String date;
	private String desc;
	private String rece;
	private String generate;
	
	public Report(int id, String name, String date, String desc, String rece,String generate) {
		super();
		this.id = id;
		this.name = name;
		this.date = date;
		this.desc = desc;
		this.rece = rece;
		this.generate = generate;
	}

	
	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getDate() {
		return date;
	}

	public String getDesc() {
		return desc;
	}

	public String getRece() {
		return rece;
	}

	public String getGenerate() {
		return generate;
	}

	
	
	
	
	

}
