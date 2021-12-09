package com.itwill.yoridogam.product;

import com.itwill.yoridogam.teacher.Teacher;

public class Product {
	private int p_no;
	private String p_name;
	private String p_detail;
	private String p_category;
	private String p_price;
	private String p_type;
	private String p_photo;
	private Teacher teacher;
	
	public Product() {
		// TODO Auto-generated constructor stub
	}

	public Product(int p_no, String p_name, String p_detail, String p_category, String p_price, String p_type,
			String p_photo, Teacher teacher) {
		super();
		this.p_no = p_no;
		this.p_name = p_name;
		this.p_detail = p_detail;
		this.p_category = p_category;
		this.p_price = p_price;
		this.p_type = p_type;
		this.p_photo = p_photo;
		this.teacher = teacher;
	}

	public int getP_no() {
		return p_no;
	}

	public void setP_no(int p_no) {
		this.p_no = p_no;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public String getP_detail() {
		return p_detail;
	}

	public void setP_detail(String p_detail) {
		this.p_detail = p_detail;
	}

	public String getP_category() {
		return p_category;
	}

	public void setP_category(String p_category) {
		this.p_category = p_category;
	}

	public String getP_price() {
		return p_price;
	}

	public void setP_price(String p_price) {
		this.p_price = p_price;
	}

	public String getP_type() {
		return p_type;
	}

	public void setP_type(String p_type) {
		this.p_type = p_type;
	}

	public String getP_photo() {
		return p_photo;
	}

	public void setP_photo(String p_photo) {
		this.p_photo = p_photo;
	}

	public Teacher getTeacher() {
		return teacher;
	}

	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}

	@Override
	public String toString() {
		return "Product [p_no=" + p_no + ", p_name=" + p_name + ", p_detail=" + p_detail + ", p_category=" + p_category
				+ ", p_price=" + p_price + ", p_type=" + p_type + ", p_photo=" + p_photo + ", teacher=" + teacher + "]\n";
	}

	
	
	
	
}
