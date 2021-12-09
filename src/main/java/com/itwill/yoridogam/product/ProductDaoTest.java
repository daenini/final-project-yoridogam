package com.itwill.yoridogam.product;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.yoridogam.pay.pay.PayDao;

public class ProductDaoTest {
	public static void main(String[] args)throws Exception{
		ApplicationContext applicationContext=
				new ClassPathXmlApplicationContext("spring/application-config.xml");
		ProductDao productDao=(ProductDao)applicationContext.getBean("productDao");
		System.out.println(productDao);
		System.out.println(productDao.selectByNo(1));
		
	}
}
