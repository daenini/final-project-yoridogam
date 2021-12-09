package com.itwill.yoridogam.review;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


public class test {
	public static void main(String[] args)throws Exception {
		
		ApplicationContext applicationContext=
				new ClassPathXmlApplicationContext("spring/application-config.xml");
		ReviewService reviewService=(ReviewService)applicationContext.getBean("reviewService");
		System.out.println(reviewService);
		reviewService.reviewAllId("member1");
		
	}
}
