package com.itwill.yoridogam.pay.cart.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.yoridogam.member.Member;
import com.itwill.yoridogam.pay.cart.Cart;
import com.itwill.yoridogam.pay.cart.CartDao;
import com.itwill.yoridogam.pay.cart.CartService;
import com.itwill.yoridogam.product.Product;

public class CartServiceTest {
	public static void main(String[] args)throws Exception{
		ApplicationContext applicationContext=
				new ClassPathXmlApplicationContext("spring/application-config.xml");
		CartService cartService=(CartService) applicationContext.getBean("cartSerivce");
		Member mm=new Member("1", null, null, null, null, null, null);
		Product pp=new Product(1, null, null, null, null, null, null, null);
		Cart cc=new Cart(0, 2, pp, mm);
		
		System.out.println(cartService.insertCart(cc));
		//System.out.println(cartService.increaseQty(1));
		System.out.println(cartService.decreaseQty(1));
		System.out.println();
	}
}
