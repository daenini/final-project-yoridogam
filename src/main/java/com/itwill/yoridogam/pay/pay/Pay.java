package com.itwill.yoridogam.pay.pay;

import java.sql.Date;
import java.util.List;

import com.itwill.yoridogam.member.Member;
import com.itwill.yoridogam.pay.payItem.Pay_item;

public class Pay {
	private int pay_no;
	private Date pay_date;
	private String pay_total;
	private String pay_type;
	private Member member;
	private List<Pay_item> payItemList;


	public Pay() {

	}

	public Pay(int pay_no, Date pay_date, String pay_total, String pay_type, Member member) {
		super();
		this.pay_no = pay_no;
		this.pay_date = pay_date;
		this.pay_total = pay_total;
		this.pay_type = pay_type;
		this.member = member;
	}

	public Pay(int pay_no, Date pay_date, String pay_total, String pay_type, Member member,
			List<Pay_item> payItemList) {
		super();
		this.pay_no = pay_no;
		this.pay_date = pay_date;
		this.pay_total = pay_total;
		this.pay_type = pay_type;
		this.member = member;
		this.payItemList = payItemList;
	}

	public int getPay_no() {
		return pay_no;
	}

	public void setPay_no(int pay_no) {
		this.pay_no = pay_no;
	}

	public Date getPay_date() {
		return pay_date;
	}

	public void setPay_date(Date pay_date) {
		this.pay_date = pay_date;
	}

	public String getPay_total() {
		return pay_total;
	}

	public void setPay_total(String pay_total) {
		this.pay_total = pay_total;
	}

	public String getPay_type() {
		return pay_type;
	}

	public void setPay_type(String pay_type) {
		this.pay_type = pay_type;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

	public List<Pay_item> getPayItemList() {
		return payItemList;
	}

	public void setPayItemList(List<Pay_item> payItemList) {
		this.payItemList = payItemList;
	}

	@Override
	public String toString() {
		return "Pay [pay_no=" + pay_no + ", pay_date=" + pay_date + ", pay_total=" + pay_total + ", pay_type="
				+ pay_type + ", member=" + member + ", payItemList=" + payItemList + "]";
	}
	
}
