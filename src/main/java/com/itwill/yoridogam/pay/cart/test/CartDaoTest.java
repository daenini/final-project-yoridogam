package com.itwill.yoridogam.pay.cart.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.yoridogam.member.Member;
import com.itwill.yoridogam.pay.cart.Cart;
import com.itwill.yoridogam.pay.cart.CartDao;
import com.itwill.yoridogam.product.Product;
import com.itwill.yoridogam.teacher.Teacher;

public class CartDaoTest {

	
	public static void main(String[] args)throws Exception{
		ApplicationContext applicationContext=
				new ClassPathXmlApplicationContext("spring/application-config.xml");
		CartDao cartDao=(CartDao)applicationContext.getBean("cartDao");
		
		Product pp=new Product(1, null, null, null, null, null,null, null);
		Member mm=new Member("1", null, null, null, null, null, null);
		
		/*insert
		System.out.println(cartDao.insertCart(new Cart(0,1,pp,mm)));
		//increaseQ
		System.out.println(cartDao.increaseQty(1));
		//decreaseQ
		System.out.println(cartDao.decreaseQty(1));
		//delete
		System.out.println(cartDao.deleteCartByNo(1));
		//deleteAll
		System.out.println(cartDao.deleteCart("3"));
		//List
		System.out.println(cartDao.cartList("1"));
		//isExist
		System.out.println(cartDao.isExistCart("1"));
		//isExistItem
		System.out.println(cartDao.isExistCartItem(new Cart(0, 0, pp, mm)));
		*/
		System.out.println(cartDao.selectCartItem(1));
	}
}
