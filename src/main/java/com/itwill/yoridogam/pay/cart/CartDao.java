package com.itwill.yoridogam.pay.cart;

import java.util.List;

public interface CartDao {

	/***********************장바구니 강의 추가***********************/
	int insertCart(Cart cart) throws Exception;
	
	/********************장바구니 강의 수량 변경********************/
	int increaseQty(int ci_no);
	
	int decreaseQty(int ci_no);
	
	/******************장바구니 내 강의 특정 삭제******************/
	int deleteCartByNo(int ci_no);
	
	/******************장바구니 내 강의 전체 삭제******************/
	int deleteCart(String sUserId);
	
	/******************장바구니 강의리스트 전체출력******************/
	List<Cart> cartList(String sUserId);
	
	/******************장바구니 내 강의 존재 여부******************/
	boolean isExistCart(String sUserId);
	
	/******************장바구니 내 특정 강의 존재 여부******************/
	boolean isExistCartItem(Cart cart);
	
	/***********장바구니 강의 1개셀렉*/
	 Cart selectCartItem(int ci_no);
	 /**********By no*/
	 Cart selectCartItemPNo(int p_no);
}
