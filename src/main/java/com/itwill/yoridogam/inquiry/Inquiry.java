package com.itwill.yoridogam.inquiry;

import java.util.Date;

import com.itwill.yoridogam.member.Member;

public class Inquiry {

	/*
		 이름        널?       유형             
	------------ -------- -------------- 
	IB_NO        NOT NULL	NUMBER(10)     
	IB_TITLE            	VARCHAR2(100)  
	IB_CONTENT         	  	VARCHAR2(1000) 
	IB_DATE            	  	DATE           
	IB_VIEWCOUNT          	NUMBER(10)     
	IB_DEPTH              	NUMBER(10)     
	IB_GROUPNO   NOT NULL 	NUMBER(10)     
	IB_STEP      NOT NULL 	NUMBER(10)     
	M_ID                  	VARCHAR2(20) 
	 */
	
	private int ib_no;
	private String ib_title;
	private String ib_content;
	private Date ib_date;
	private int ib_viewCount;
	private int ib_depth;
	private int ib_groupNo;
	private int ib_step;
	private Member member;
	
	public Inquiry() {
		// TODO Auto-generated constructor stub
	}

	public Inquiry(int ib_no, String ib_title, String ib_content, Date ib_date, int ib_viewCount, int ib_depth,
			int ib_groupNo, int ib_step, Member member) {
		super();
		this.ib_no = ib_no;
		this.ib_title = ib_title;
		this.ib_content = ib_content;
		this.ib_date = ib_date;
		this.ib_viewCount = ib_viewCount;
		this.ib_depth = ib_depth;
		this.ib_groupNo = ib_groupNo;
		this.ib_step = ib_step;
		this.member = member;
	}

	public int getIb_no() {
		return ib_no;
	}

	public void setIb_no(int ib_no) {
		this.ib_no = ib_no;
	}

	public String getIb_title() {
		return ib_title;
	}

	public void setIb_title(String ib_title) {
		this.ib_title = ib_title;
	}

	public String getIb_content() {
		return ib_content;
	}

	public void setIb_content(String ib_content) {
		this.ib_content = ib_content;
	}

	public Date getIb_date() {
		return ib_date;
	}

	public void setIb_date(Date ib_date) {
		this.ib_date = ib_date;
	}

	public int getIb_viewCount() {
		return ib_viewCount;
	}

	public void setIb_viewCount(int ib_viewCount) {
		this.ib_viewCount = ib_viewCount;
	}

	public int getIb_depth() {
		return ib_depth;
	}

	public void setIb_depth(int ib_depth) {
		this.ib_depth = ib_depth;
	}

	public int getIb_groupNo() {
		return ib_groupNo;
	}

	public void setIb_groupNo(int ib_groupNo) {
		this.ib_groupNo = ib_groupNo;
	}

	public int getIb_step() {
		return ib_step;
	}

	public void setIb_step(int ib_step) {
		this.ib_step = ib_step;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

	@Override
	public String toString() {
		return "Inquiry [ib_no=" + ib_no + ", ib_title=" + ib_title + ", ib_content=" + ib_content + ", ib_date="
				+ ib_date + ", ib_viewCount=" + ib_viewCount + ", ib_depth=" + ib_depth + ", ib_groupNo=" + ib_groupNo
				+ ", ib_step=" + ib_step + ", member=" + member + "]";
	}
	
	
}
