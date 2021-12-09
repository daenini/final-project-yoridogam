package com.itwill.yoridogam.memberInterest;

import com.itwill.yoridogam.member.Member;

/*
	이름          널?       유형           
	----------- -------- ------------ 
	MI_NO       NOT NULL NUMBER(10)    
	MI_INTEREST          VARCHAR2(30) 
	M_ID                 VARCHAR2(20) 	
 */
public class MemberInterest { 
	private int mi_no;
	private String mi_interest;
	private Member member;
	
	public MemberInterest() {
		// TODO Auto-generated constructor stub
	}

	public MemberInterest(int mi_no, String mi_interest, Member member) {
		super();
		this.mi_no = mi_no;
		this.mi_interest = mi_interest;
		this.member = member;
	}

	public int getMi_no() {
		return mi_no;
	}

	public void setMi_no(int mi_no) {
		this.mi_no = mi_no;
	}

	public String getMi_interest() {
		return mi_interest;
	}

	public void setMi_interest(String mi_interest) {
		this.mi_interest = mi_interest;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

	@Override
	public String toString() {
		return "MemberInterest [mi_no=" + mi_no + ", mi_interest=" + mi_interest + ", member=" + member.getM_id() + "]";
	}
	
	
}
