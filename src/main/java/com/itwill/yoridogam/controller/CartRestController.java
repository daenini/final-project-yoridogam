package com.itwill.yoridogam.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.itwill.yoridogam.controller.interceptor.LoginCheck;
import com.itwill.yoridogam.pay.cart.Cart;
import com.itwill.yoridogam.pay.cart.CartService;


@RestController
public class CartRestController {

	@Autowired
	private CartService cartService;
	
	/*********************************************************************
	 장바구니 모든 강의 삭제
	 *********************************************************************/
	@LoginCheck
	@PostMapping("cart_deleteById_action")
	public void cartDelById(HttpSession session) throws Exception{
		String sUserId=(String)session.getAttribute("sUserId");
		cartService.deleteCart(sUserId);
	}
	
	/*********************************************************************
	 장바구니 내 강의 수량증가
	 *********************************************************************/
	@LoginCheck
	@PostMapping("cart_qtyP_action")
	public Map cartItemQtyP(HttpSession session ,int ci_no) throws Exception{
		cartService.increaseQty(ci_no);
		List<Cart> cList=cartService.cartList((String)session.getAttribute("sUserId"));
		int tot=0;
		for(Cart cart:cList) {
			tot+=Integer.parseInt(cart.getProduct().getP_price())*cart.getCi_qty();
		}
		Map result=new HashMap();
		result.put("qty", cartService.selectCartItem(ci_no).getCi_qty());
		result.put("price",Integer.parseInt(cartService.selectCartItem(ci_no).getProduct().getP_price()));
		result.put("tot", tot);
		return result;
	}
	
	/*********************************************************************
	 장바구니 내 강의 수량감소
	 *********************************************************************/
	@LoginCheck
	@PostMapping("cart_qtyM_action")
	public Map cartItemQtyM(HttpSession session, int ci_no) throws Exception{
		cartService.decreaseQty(ci_no);
		List<Cart> cList=cartService.cartList((String)session.getAttribute("sUserId"));
		int tot=0;
		for(Cart cart:cList) {
			tot+=Integer.parseInt(cart.getProduct().getP_price())*cart.getCi_qty();
		}
		Map result=new HashMap();
		result.put("qty", cartService.selectCartItem(ci_no).getCi_qty());
		result.put("price",Integer.parseInt(cartService.selectCartItem(ci_no).getProduct().getP_price()));
		result.put("tot", tot);
		return result;
	}
	
	/*********************************************************************
	 장바구니 내 강의 선택에 따른 변경
	 *********************************************************************/
	@LoginCheck
	@PostMapping("cart_item_select")
	public int cartItemSelect(HttpSession session, @RequestParam(required = false) String ci_no) throws Exception{
		int ci_noInt=(int)Integer.parseInt(ci_no);
		Cart nCart=cartService.selectCartItem(ci_noInt);
		int total=Integer.parseInt(nCart.getProduct().getP_price())*nCart.getCi_qty();
		return total;
	}


}
