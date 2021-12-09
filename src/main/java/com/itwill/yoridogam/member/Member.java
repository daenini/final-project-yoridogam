package com.itwill.yoridogam.member;

/*******************************
이름         널?       유형            
---------- -------- ------------- 
M_ID       NOT NULL VARCHAR2(20)  
M_NAME     NOT NULL VARCHAR2(20)  
M_PASS     NOT NULL VARCHAR2(30)  
M_ADDR     NOT NULL VARCHAR2(100) 
M_EMAIL    NOT NULL VARCHAR2(50)  
M_PHONE    NOT NULL VARCHAR2(12)  
M_GENDER   NOT NULL VARCHAR2(10) 
**********************************/
public class Member {
	
	

	private String m_id;
	private String m_name;
	private String m_pass;
	private String m_addr;
	private String m_email;
	private String m_phone;
	private String m_gender;
	
	public Member() {
		// TODO Auto-generated constructor stub
	}
	
	

	
	public Member(String m_id, String m_name, String m_pass, String m_addr, String m_email, String m_phone, String m_gender) {
		super();
		this.m_id = m_id;
		this.m_name = m_name;
		this.m_pass = m_pass;
		this.m_addr = m_addr;
		this.m_email = m_email;
		this.m_phone = m_phone;
		this.m_gender = m_gender;
	}
	

	public String getM_id() {
		return m_id;
	}




	public void setM_id(String m_id) {
		this.m_id = m_id;
	}




	public String getM_name() {
		return m_name;
	}




	public void setM_name(String m_name) {
		this.m_name = m_name;
	}




	public String getM_pass() {
		return m_pass;
	}




	public void setM_pass(String m_pass) {
		this.m_pass = m_pass;
	}




	public String getM_addr() {
		return m_addr;
	}




	public void setM_addr(String m_addr) {
		this.m_addr = m_addr;
	}




	public String getM_email() {
		return m_email;
	}




	public void setM_email(String m_email) {
		this.m_email = m_email;
	}




	public String getM_phone() {
		return m_phone;
	}




	public void setM_phone(String m_phone) {
		this.m_phone = m_phone;
	}

	public String getM_gender() {
		return m_gender;
	}




	public void setM_gender(String m_gender) {
		this.m_gender = m_gender;
	}




	/*
	 * 패스워드 일치여부 확인
	 */
	public boolean isMatchPassword(String password) {
		boolean isMatch=false;
		if(this.m_pass.equals(password)){
			isMatch=true;
		}
		return isMatch;
	}




	@Override
	public String toString() {
		return "Member [m_id=" + m_id + ", m_name=" + m_name + ", m_pass=" + m_pass + ", m_addr=" + m_addr
				+ ", m_email=" + m_email + ", m_phone=" + m_phone + ", m_gender="
				+ m_gender + "]";
	}
	
	
	
}
