package com.itwill.yoridogam.productTime.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


import com.itwill.yoridogam.productTime.ProductTimeService;


public class PTseviceTest {

	public static void main(String[] args) throws Exception {
		ApplicationContext applicationContext=
				new ClassPathXmlApplicationContext("spring/application-config.xml");
		ProductTimeService ProductTimeService=(ProductTimeService)applicationContext.getBean("productTimeService");
		System.out.println(ProductTimeService);
		
		System.out.println(ProductTimeService.selectPtTime("2021-10-23",4));
		
		
	}

}
