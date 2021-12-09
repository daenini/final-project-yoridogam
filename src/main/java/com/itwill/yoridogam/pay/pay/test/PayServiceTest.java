package com.itwill.yoridogam.pay.pay.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.yoridogam.member.Member;
import com.itwill.yoridogam.pay.pay.Pay;
import com.itwill.yoridogam.pay.pay.PayDao;
import com.itwill.yoridogam.pay.pay.PayService;

public class PayServiceTest {
	public static void main(String[] args)throws Exception{
		ApplicationContext applicationContext=
				new ClassPathXmlApplicationContext("spring/application-config.xml");
		PayService payService=(PayService)applicationContext.getBean("payService");
		System.out.println(payService);

		
		Member mm=new Member("member1", null, null, null, null, null, null);
		Pay pp=new Pay(1, null, "", "카드", mm);
		
		//강의 직접결제
		//System.out.println(payService.createPay(pp, 1, 1));
		
		
		//강의 장바구니결제
		//System.out.println(payService.createPayFromCart(pp, "1"));
		
		//1개 삭제
		//System.out.println(payService.deletePayByNo(1));
		
		//존재여부
		//System.out.println(payService.isExistPay("member1"));

		//all삭제
		//System.out.println(payService.deletePay("2"));
		
		//결제내역
		//System.out.println(payService.findPayList("member1"));
		
		//결제내역 상세
		//System.out.println(payService.findPayDetailList("member1"));

		//결제내역 한건
		//System.out.println(payService.findPayByNo(pp));
		
		//결제내역 한건상세
		System.out.println(payService.findPayDetailByNo(1));
		
		/*
		*/
		
	}
}
