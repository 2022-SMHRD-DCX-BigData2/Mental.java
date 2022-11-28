package com.domain;

public class Board {
	private int bd_num;
	private String bd_title;
	private String bd_contents;
	private String bd_date;
	private int bd_cnt;
	private int mem_no;
	
	// Getter, Setter 
	
	public int getBd_num() {
		return bd_num;
	}
	public void setBd_num(int bd_num) {
		this.bd_num = bd_num;
	}
	public String getBd_title() {
		return bd_title;
	}
	public void setBd_title(String bd_title) {
		this.bd_title = bd_title;
	}
	public String getBd_contents() {
		return bd_contents;
	}
	public void setBd_contents(String bd_contents) {
		this.bd_contents = bd_contents;
	}
	public String getBd_date() {
		return bd_date;
	}
	public void setBd_date(String bd_date) {
		this.bd_date = bd_date;
	}
	public int getBd_cnt() {
		return bd_cnt;
	}
	public void setBd_cnt(int bd_cnt) {
		this.bd_cnt = bd_cnt;
	}
	public int getMem_no() {
		return mem_no;
	}
	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}

	
	
	//	 생성자
	
	
	public Board(int bd_num, String bd_title, String bd_contents, String bd_date, int bd_cnt, int mem_no) {
		super();
		this.bd_num = bd_num;
		this.bd_title = bd_title;
		this.bd_contents = bd_contents;
		this.bd_date = bd_date;
		this.bd_cnt = bd_cnt;
		this.mem_no = mem_no;
	}

	
	
	
	

	
	
	
	
	
	
	
	
}
