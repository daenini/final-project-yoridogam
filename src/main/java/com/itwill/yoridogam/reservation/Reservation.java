package com.itwill.yoridogam.reservation;

import java.sql.Date;

import com.itwill.yoridogam.member.Member;
import com.itwill.yoridogam.product.Product;

public class Reservation {
	private int rsv_no; 
	private int rsv_total; // 총 금액
	private String rsv_type; // 결제 방식
	private int rsv_qty; // 총 인원
	private String rsv_date; // 예약일
	private String rsv_time; // 예약 시간
	private Date rsv_payDate; // 결제 일자
	private Member member; //수강생 정보를 얻기 위함
	private Product product; // 강의 정보를 얻기 위함

	public Reservation() {
		
	}

	public Reservation(int rsv_no, int rsv_total, String rsv_type, int rsv_qty, String rsv_date, String rsv_time,
			Date rsv_payDate, Member member, Product product) {
		this.rsv_no = rsv_no;
		this.rsv_total = rsv_total;
		this.rsv_type = rsv_type;
		this.rsv_qty = rsv_qty;
		this.rsv_date = rsv_date;
		this.rsv_time = rsv_time;
		this.rsv_payDate = rsv_payDate;
		this.member = member;
		this.product = product;
	}

	public int getRsv_no() {
		return rsv_no;
	}

	public void setRsv_no(int rsv_no) {
		this.rsv_no = rsv_no;
	}

	public int getRsv_total() {
		return rsv_total;
	}

	public void setRsv_total(int rsv_total) {
		this.rsv_total = rsv_total;
	}

	public String getRsv_type() {
		return rsv_type;
	}

	public void setRsv_type(String rsv_type) {
		this.rsv_type = rsv_type;
	}

	public int getRsv_qty() {
		return rsv_qty;
	}

	public void setRsv_qty(int rsv_qty) {
		this.rsv_qty = rsv_qty;
	}

	public String getRsv_date() {
		return rsv_date;
	}

	public void setRsv_date(String rsv_date) {
		this.rsv_date = rsv_date;
	}

	public String getRsv_time() {
		return rsv_time;
	}

	public void setRsv_time(String rsv_time) {
		this.rsv_time = rsv_time;
	}

	public Date getRsv_payDate() {
		return rsv_payDate;
	}

	public void setRsv_payDate(Date rsv_payDate) {
		this.rsv_payDate = rsv_payDate;
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
		return "Reservation [rsv_no=" + rsv_no + ", rsv_total=" + rsv_total + ", rsv_type=" + rsv_type + ", rsv_qty="
				+ rsv_qty + ", rsv_date=" + rsv_date + ", rsv_time=" + rsv_time + ", rsv_payDate=" + rsv_payDate + "]\n";
	}
	
	
}
