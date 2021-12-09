package com.itwill.yoridogam.pay.pay.test;


import java.util.ArrayList;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.yoridogam.member.Member;
import com.itwill.yoridogam.pay.cart.CartDao;
import com.itwill.yoridogam.pay.pay.Pay;
import com.itwill.yoridogam.pay.pay.PayDao;
import com.itwill.yoridogam.pay.payItem.Pay_item;
import com.itwill.yoridogam.product.Product;

public class PayDaoTest {

	public static void main(String[] args)throws Exception{
		ApplicationContext applicationContext=
				new ClassPathXmlApplicationContext("spring/application-config.xml");
		PayDao payDao=(PayDao)applicationContext.getBean("payDao");
		System.out.println(payDao);
		
		Member mm=new Member("member1", null, null, null, null, null, null);
		Pay pp=new Pay(4, null, "", "카드", mm, null);
		Product pd=new Product(1, null, null, null, null, null, null, null);
		//create
		System.out.println(payDao.createPay(pp));
		/*
		//deleteNo
		System.out.println(payDao.deletePayByNo(2));
		//deleteAll
		System.out.println(payDao.deletePay("1"));
		//isExist
		System.out.println(payDao.isExistPay("1"));
		//findPayNo
		System.out.println(payDao.findPayByNo(pp));
		//findPayall
		System.out.println(payDao.findPayList("1"));
		//findDetailList
		System.out.println(payDao.findPayDetailList("1"));
		//findDatailByNo
		System.out.println(payDao.findPayDetailByNo(1));
		*/
	}
}
