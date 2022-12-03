package com.domain;

public class Calendar {
	private String LCNS_NUM;
	private String LCNS_JM;
	private String LCNS_NAME;
	private String LCN_REG_ST;
	private String LCN_REG_ED;
	private String LCN_EX_ST;
	private String LCN_EX_ED;
	private String LCN_PASS;
	
	private String id;
	private String title;
	private String start;
	private String end;
	
	public Calendar(String id, String title, String start, String end) {
		super();
		this.id = id;
		this.title = title;
		this.start = start;
		this.end = end;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getStart() {
		return start;
	}
	public void setStart(String start) {
		this.start = start;
	}
	public String getEnd() {
		return end;
	}
	public void setEnd(String end) {
		this.end = end;
	}
	public String getLCNS_NUM() {
		return LCNS_NUM;
	}
	public void setLCNS_NUM(String lCNS_NUM) {
		LCNS_NUM = lCNS_NUM;
	}
	public String getLCNS_JM() {
		return LCNS_JM;
	}
	public void setLCNS_JM(String lCNS_JM) {
		LCNS_JM = lCNS_JM;
	}
	public String getLCNS_NAME() {
		return LCNS_NAME;
	}
	public void setLCNS_NAME(String lCNS_NAME) {
		LCNS_NAME = lCNS_NAME;
	}
	public String getLCN_REG_ST() {
		return LCN_REG_ST;
	}
	public void setLCN_REG_ST(String lCN_REG_ST) {
		LCN_REG_ST = lCN_REG_ST;
	}
	public String getLCN_REG_ED() {
		return LCN_REG_ED;
	}
	public void setLCN_REG_ED(String lCN_REG_ED) {
		LCN_REG_ED = lCN_REG_ED;
	}
	public String getLCN_EX_ST() {
		return LCN_EX_ST;
	}
	public void setLCN_EX_ST(String lCN_EX_ST) {
		LCN_EX_ST = lCN_EX_ST;
	}
	public String getLCN_EX_ED() {
		return LCN_EX_ED;
	}
	public void setLCN_EX_ED(String lCN_EX_ED) {
		LCN_EX_ED = lCN_EX_ED;
	}
	public String getLCN_PASS() {
		return LCN_PASS;
	}
	public void setLCN_PASS(String lCN_PASS) {
		LCN_PASS = lCN_PASS;
	}
	
	
	
	public Calendar(String lCNS_NUM, String lCNS_JM, String lCNS_NAME, String lCN_REG_ST, String lCN_REG_ED,
			String lCN_EX_ST, String lCN_EX_ED, String lCN_PASS) {
		super();
		LCNS_NUM = lCNS_NUM;
		LCNS_JM = lCNS_JM;
		LCNS_NAME = lCNS_NAME;
		LCN_REG_ST = lCN_REG_ST;
		LCN_REG_ED = lCN_REG_ED;
		LCN_EX_ST = lCN_EX_ST;
		LCN_EX_ED = lCN_EX_ED;
		LCN_PASS = lCN_PASS;
	}
	
	
	
	
	
	
	
}
