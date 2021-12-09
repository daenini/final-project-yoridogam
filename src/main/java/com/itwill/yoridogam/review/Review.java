package com.itwill.yoridogam.review;

import com.itwill.yoridogam.member.Member;
import com.itwill.yoridogam.product.Product;

public class Review {
	
	/*
	 * 이름        널?       유형             
--------- -------- -------------- 
R_NO      NOT NULL NUMBER(10)     
R_TITLE            VARCHAR2(400)  
R_CONTENT          VARCHAR2(1000) 
R_GRADE            NUMBER(10)     
R_PHOTO            VARCHAR2(500)  
R_DATE             DATE           
M_ID               VARCHAR2(20)   
P_NO               NUMBER(10)     
	 */
	
	private int r_no;
	private String r_title;
	private String r_content;
	private int r_grade;
	private String r_photo;
	private String r_date;
	private Member member;
	private Product product;
	
	
	public Review() {
		// TODO Auto-generated constructor stub
	}


	public Review(int r_no, String r_title, String r_content, int r_grade, String r_photo, String r_date, Member member,
			Product product) {
		super();
		this.r_no = r_no;
		this.r_title = r_title;
		this.r_content = r_content;
		this.r_grade = r_grade;
		this.r_photo = r_photo;
		this.r_date = r_date;
		this.member = member;
		this.product = product;
	}


	public int getR_no() {
		return r_no;
	}


	public void setR_no(int r_no) {
		this.r_no = r_no;
	}


	public String getR_title() {
		return r_title;
	}


	public void setR_title(String r_title) {
		this.r_title = r_title;
	}


	public String getR_content() {
		return r_content;
	}


	public void setR_content(String r_content) {
		this.r_content = r_content;
	}


	public int getR_grade() {
		return r_grade;
	}


	public void setR_grade(int r_grade) {
		this.r_grade = r_grade;
	}


	public String getR_photo() {
		return r_photo;
	}


	public void setR_photo(String r_photo) {
		this.r_photo = r_photo;
	}


	public String getR_date() {
		return r_date;
	}


	public void setR_date(String r_date) {
		this.r_date = r_date;
	}


	public Member getMember() {
		return member;
	}


	public void setMember(Member member) {
		this.member = member;
	}


	public Product getProduct() {
		return product;
	}


	public void setProduct(Product product) {
		this.product = product;
	}


	@Override
	public String toString() {
		return "Review [r_no=" + r_no + ", r_title=" + r_title + ", r_content=" + r_content + ", r_grade=" + r_grade
				+ ", r_photo=" + r_photo + ", r_date=" + r_date + ", member=" + member + ", product=" + product + "]";
	}

	
}
