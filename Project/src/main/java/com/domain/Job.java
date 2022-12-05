package com.domain;

public class Job {
	private String CMP_NUM;
	private String CMP_NAME;
	private String CMP_TITLE;
	private String CMP_ADD;

	
	public Job(String cMP_NUM, String cMP_NAME, String cMP_TITLE, String cMP_ADD) {
		super();
		CMP_NUM = cMP_NUM;
		CMP_NAME = cMP_NAME;
		CMP_TITLE = cMP_TITLE;
		CMP_ADD = cMP_ADD;
	}


	public String getCMP_NUM() {
		return CMP_NUM;
	}


	public void setCMP_NUM(String cMP_NUM) {
		CMP_NUM = cMP_NUM;
	}


	public String getCMP_NAME() {
		return CMP_NAME;
	}


	public void setCMP_NAME(String cMP_NAME) {
		CMP_NAME = cMP_NAME;
	}


	public String getCMP_TITLE() {
		return CMP_TITLE;
	}


	public void setCMP_TITLE(String cMP_TITLE) {
		CMP_TITLE = cMP_TITLE;
	}


	public String getCMP_ADD() {
		return CMP_ADD;
	}


	public void setCMP_ADD(String cMP_ADD) {
		CMP_ADD = cMP_ADD;
	}
	
	
	
	
	
}
