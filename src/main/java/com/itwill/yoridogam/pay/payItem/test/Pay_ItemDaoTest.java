package com.itwill.yoridogam.pay.payItem.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.yoridogam.pay.pay.PayDao;
import com.itwill.yoridogam.pay.payItem.Pay_item;
import com.itwill.yoridogam.pay.payItem.Pay_itemDao;
import com.itwill.yoridogam.product.Product;

public class Pay_ItemDaoTest {
	public static void main(String[] args)throws Exception{
		ApplicationContext applicationContext=
				new ClassPathXmlApplicationContext("spring/application-config.xml");
		Pay_itemDao pay_itemDao=(Pay_itemDao)applicationContext.getBean("pay_itemDao");
		System.out.println(pay_itemDao);

		Product pd=new Product(1, null, null, null, null, null, null, null);
		Pay_item pi=new Pay_item(0, 1, 1, pd);
		
		//create
		System.out.println(pay_itemDao.createPayItem(pi));
		
	}
}
