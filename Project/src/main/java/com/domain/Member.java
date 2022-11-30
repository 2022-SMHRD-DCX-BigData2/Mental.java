package com.domain;

public class Member {
	private String mem_id;
	private String mem_pw;
	private String mem_email;
	private String mem_name;
	private String mem_tel;
	private String mem_no;
	
//	  ----------------------------생성자 -----------------------------------------
	
	
	
	public Member(String mem_id, String mem_pw, String mem_name, String mem_tel, String mem_email, String mem_no) {
		super();
		this.mem_id = mem_id;
		this.mem_pw = mem_pw;
		this.mem_email = mem_email;
		this.mem_name = mem_name;
		this.mem_tel = mem_tel;
		this.mem_no = mem_no;
	}

	public Member() {
		super();
	}

	public Member(String mem_pw, String mem_email, String mem_name, String mem_tel) {
		super();
		this.mem_pw = mem_pw;
		this.mem_email = mem_email;
		this.mem_name = mem_name;
		this.mem_tel = mem_tel;
	}

	public Member(String mem_id) {
		super();
		this.mem_id = mem_id;
	}
	

	

	public Member(String mem_id, String mem_pw, String mem_email, String mem_name, String mem_tel) {
		super();
		this.mem_id = mem_id;
		this.mem_pw = mem_pw;
		this.mem_email = mem_email;
		this.mem_name = mem_name;
		this.mem_tel = mem_tel;
	}
	
	public Member(String mem_id, String mem_pw) {
		super();
		this.mem_id = mem_id;
		this.mem_pw = mem_pw;
	}
	public Member(String mem_id, String mem_pw, String mem_email) {
		super();
		this.mem_id = mem_id;
		this.mem_pw = mem_pw;
		this.mem_email = mem_email;
	}

	
	
// ----------------------------------------- Getter , Setter------------------------
	
	public String getmem_id() {
		return mem_id;
	}

	public void setmem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public String getmem_pw() {
		return mem_pw;
	}

	public void setmem_pw(String mem_pw) {
		this.mem_pw = mem_pw;
	}

	public String getmem_email() {
		return mem_email;
	}

	public void setmem_email(String mem_email) {
		this.mem_email = mem_email;
	}

	public String getmem_name() {
		return mem_name;
	}

	public void setmem_name(String mem_name) {
		this.mem_name = mem_name;
	}

	public String getmem_tel() {
		return mem_tel;
	}

	public void setmem_tel(String mem_tel) {
		this.mem_tel = mem_tel;
	}

	public String getmem_no() {
		return mem_no;
	}

	public void setmem_no(String mem_no) {
		this.mem_no = mem_no;
	}
	

	
	
		
	
	
}
