package com.itwill.yoridogam.pay.cart;

import com.itwill.yoridogam.member.Member;
import com.itwill.yoridogam.product.Product;

public class Cart {
	private int ci_no;
	private int ci_qty;
	private Product product;
	private Member member;

	public Cart() {
	}
	
	
	public Cart(int ci_no, int ci_qty, Product product, Member member) {
		super();
		this.ci_no = ci_no;
		this.ci_qty = ci_qty;
		this.product = product;
		this.member = member;
	}

	public int getCi_no() {
		return ci_no;
	}

	public void setCi_no(int ci_no) {
		this.ci_no = ci_no;
	}

	public int getCi_qty() {
		return ci_qty;
	}

	public void setCi_qty(int ci_qty) {
		this.ci_qty = ci_qty;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}


	@Override
	public String toString() {
		return "Cart [ci_no=" + ci_no + ", ci_qty=" + ci_qty + ", product=" + product + ", member=" + member + "]";
	}
	
	

}

