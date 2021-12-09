package com.itwill.yoridogam.productTime;
/*
 이름      널? 유형            
------- -- ------------- 
PT_NO      NUMBER(10)    
PT_DATE    DATE          
PT_TIME    VARCHAR2(100) 
P_NO       NUMBER(10)
 */

import java.sql.Date;

import com.itwill.yoridogam.product.Product;

public class ProductTime {
	private int pt_no;
	private String pt_date; // 상품 예약 가능 날짜
	private String pt_time; // 상품 예약 가능 시간
	private int pt_max; // 상품 예약 가능 총인원
	private int pt_rsv; // 상품에 예약된 인원
	private Product product;
	
	public ProductTime() {
		// TODO Auto-generated constructor stub
	}
	
	public ProductTime(int pt_no, String pt_date, String pt_time, int pt_max, int pt_rsv, Product product) {
		super();
		this.pt_no = pt_no;
		this.pt_date = pt_date;
		this.pt_time = pt_time;
		this.pt_max = pt_max;
		this.pt_rsv = pt_rsv;
		this.product = product;
	}

	public int getPt_no() {
		return pt_no;
	}

	public void setPt_no(int pt_no) {
		this.pt_no = pt_no;
	}

	public String getPt_date() {
		return pt_date;
	}

	public void setPt_date(String pt_date) {
		this.pt_date = pt_date;
	}

	public String getPt_time() {
		return pt_time;
	}

	public void setPt_time(String pt_time) {
		this.pt_time = pt_time;
	}

	public int getPt_max() {
		return pt_max;
	}

	public void setPt_max(int pt_max) {
		this.pt_max = pt_max;
	}

	public int getPt_rsv() {
		return pt_rsv;
	}

	public void setPt_rsv(int pt_rsv) {
		this.pt_rsv = pt_rsv;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	@Override
	public String toString() {
		return "ProductTime [pt_no=" + pt_no + ", pt_date=" + pt_date + ", pt_time=" + pt_time + ", pt_max=" + pt_max
				+ ", pt_rsv=" + pt_rsv + ", product=" + product + "]\n";
	}
	
	
	
	
}
