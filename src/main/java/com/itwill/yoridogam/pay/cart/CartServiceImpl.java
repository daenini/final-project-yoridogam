package com.itwill.yoridogam.pay.cart;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("cartSerivce")
public class CartServiceImpl implements CartService{

	@Autowired
	private CartDao cartDao;

	/***********************장바구니 강의 추가***********************/
	@Override
	public int insertCart(Cart cart) throws Exception {
		return cartDao.insertCart(cart);
	}

	/********************장바구니 강의 수량 변경********************/
	@Override
	public int increaseQty(int ci_no) {
		return cartDao.increaseQty(ci_no);
	}

	@Override
	public int decreaseQty(int ci_no) {
		return cartDao.decreaseQty(ci_no);
	}
	
	/******************장바구니 내 강의 특정 삭제******************/
	@Override
	public int deleteCartByNo(int ci_no) {
		return cartDao.deleteCartByNo(ci_no);
	}
	
	/******************장바구니 내 강의 전체 삭제******************/
	@Override
	public int deleteCart(String sUserId) {
		return cartDao.deleteCart(sUserId);
	}
	
	/******************장바구니 강의리스트 전체출력******************/
	@Override
	public List<Cart> cartList(String sUserId) {
		return cartDao.cartList(sUserId);
	}
	
	/******************장바구니 내 강의 존재 여부******************/
	@Override
	public boolean isExistCart(String sUserId) {
		return cartDao.isExistCart(sUserId);
	}
	
	/******************장바구니 내 특정 강의 존재 여부******************/
	@Override
	public boolean isExistCartItem(Cart cart) {
		return cartDao.isExistCartItem(cart);
	}

	@Override
	public Cart selectCartItem(int ci_no) {
		return cartDao.selectCartItem(ci_no);
	}

	@Override
	public Cart selectCartItemPNo(int p_no) {
		return cartDao.selectCartItemPNo(p_no);
	}


	
	
}
