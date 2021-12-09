package com.itwill.yoridogam.pay.payItem;

import com.itwill.yoridogam.product.Product;

public class Pay_item {
	private int pi_no;
	private int pi_qty;
	private int pay_no;
	private Product product;
	
	public Pay_item() {
	}

	public Pay_item(int pi_no, int pi_qty, int pay_no, Product product) {
		super();
		this.pi_no = pi_no;
		this.pi_qty = pi_qty;
		this.pay_no = pay_no;
		this.product = product;
	}

	public int getPi_no() {
		return pi_no;
	}

	public void setPi_no(int pi_no) {
		this.pi_no = pi_no;
	}

	public int getPi_qty() {
		return pi_qty;
	}

	public void setPi_qty(int pi_qty) {
		this.pi_qty = pi_qty;
	}

	public int getPay_no() {
		return pay_no;
	}

	public void setPay_no(int pay_no) {
		this.pay_no = pay_no;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	@Override
	public String toString() {
		return "Pay_item [pi_no=" + pi_no + ", pi_qty=" + pi_qty + ", pay_no=" + pay_no + ", product=" + product + "]";
	}
	
	

}
