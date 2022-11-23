package com.domain;

public class Member {
	private String id;
	private String pw;
	private String email;
	private String name;
	private String tel;
	
	
	
	public Member(String pw, String email, String name, String tel) {
		super();
		this.pw = pw;
		this.email = email;
		this.name = name;
		this.tel = tel;
	}

	public Member(String id) {
		super();
		this.id = id;
	}

	public Member(String id, String pw, String email, String name, String tel) {
		super();
		this.id = id;
		this.pw = pw;
		this.email = email;
		this.name = name;
		this.tel = tel;
	}
	
	public Member(String id, String pw) {
		super();
		this.id = id;
		this.pw = pw;
	}
	public Member(String id, String pw, String email) {
		super();
		this.id = id;
		this.pw = pw;
		this.email = email;
	}
	public String getid() {
		return id;
	}
	public void setid(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	
	
	
		
	
	
}
