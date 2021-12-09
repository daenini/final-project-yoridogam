package com.itwill.yoridogam.teacher;

import com.itwill.yoridogam.product.Product;

/*******************************
이름         널?       유형            
---------- -------- ------------- 
T_ID       NOT NULL VARCHAR2(20)  
T_NAME     NOT NULL VARCHAR2(20)  
T_PASS     NOT NULL VARCHAR2(30)  
T_EMAIL    NOT NULL VARCHAR2(50)  
T_PHONE    NOT NULL VARCHAR2(14)  
T_PHOTO    NOT NULL VARCHAR2(500) 
T_DETAIL   NOT NULL VARCHAR2(500) 
T_LOCATION NOT NULL VARCHAR2(100)      
**********************************/
public class Teacher {
	private String t_id;
	private String t_name;
	private String t_pass;
	private String t_phone;
	private String t_email;
	private String t_photo;
	private String t_detail;
	private String t_location;
	
	public Teacher() {
		// TODO Auto-generated constructor stub
	}

	

	public Teacher(String t_id, String t_name, String t_pass, String t_phone, String t_email, String t_photo,
			String t_detail, String t_location) {
		super();
		this.t_id = t_id;
		this.t_name = t_name;
		this.t_pass = t_pass;
		this.t_phone = t_phone;
		this.t_email = t_email;
		this.t_photo = t_photo;
		this.t_detail = t_detail;
		this.t_location = t_location;
	}



	public String getT_id() {
		return t_id;
	}



	public void setT_id(String t_id) {
		this.t_id = t_id;
	}



	public String getT_name() {
		return t_name;
	}



	public void setT_name(String t_name) {
		this.t_name = t_name;
	}



	public String getT_pass() {
		return t_pass;
	}



	public void setT_pass(String t_pass) {
		this.t_pass = t_pass;
	}



	public String getT_phone() {
		return t_phone;
	}



	public void setT_phone(String t_phone) {
		this.t_phone = t_phone;
	}



	public String getT_email() {
		return t_email;
	}



	public void setT_email(String t_email) {
		this.t_email = t_email;
	}



	public String getT_photo() {
		return t_photo;
	}



	public void setT_photo(String t_photo) {
		this.t_photo = t_photo;
	}



	public String getT_detail() {
		return t_detail;
	}



	public void setT_detail(String t_detail) {
		this.t_detail = t_detail;
	}



	public String getT_location() {
		return t_location;
	}



	public void setT_location(String t_location) {
		this.t_location = t_location;
	}




	/*
	 * 패스워드 일치여부 확인
	 */
	public boolean isMatchPassword(String password) {
		boolean isMatch=false;
		if(this.t_pass.equals(password)){
			isMatch=true;
		}
		return isMatch;
	}



	@Override
	public String toString() {
		return "Teacher [t_id=" + t_id + ", t_name=" + t_name + ", t_pass=" + t_pass + ", t_phone=" + t_phone
				+ ", t_email=" + t_email + ", t_photo=" + t_photo + ", t_detail=" + t_detail + ", t_location="
				+ t_location + "]";
	}


}