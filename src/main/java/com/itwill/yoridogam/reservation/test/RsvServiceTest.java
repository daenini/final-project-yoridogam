package com.itwill.yoridogam.reservation.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.yoridogam.member.Member;
import com.itwill.yoridogam.member.MemberService;
import com.itwill.yoridogam.pay.pay.PayService;
import com.itwill.yoridogam.product.Product;
import com.itwill.yoridogam.productTime.ProductTime;
import com.itwill.yoridogam.reservation.Reservation;
import com.itwill.yoridogam.reservation.ReservationService;

public class RsvServiceTest {
	
	public static void main(String[] args)throws Exception {
		
		
		ApplicationContext applicationContext=
				new ClassPathXmlApplicationContext("spring/application-config.xml");
		ReservationService reservationService=(ReservationService)applicationContext.getBean("reservationService");
		System.out.println(reservationService);
		
		
		/*
		 * Reservation reservation = new Reservation(0, 30123000, "카카오페이", 4, "", "",
		 * null, new Member("member3",null,null,null,null,null,null), new
		 * Product(2,null,null,null,null,null,null,null));
		 * 
		 * ProductTime productTime = new ProductTime(1, "2021/10/22", "10:00-11:00", 0,
		 * 0, null);
		 * 
		 * reservationService.insert(reservation, "member1");
		 * 
		 * System.out.println(reservation.getRsv_no());
		 */
		
		//reservationService.selectAll("member1");
		System.out.println(reservationService.selectAll("member1"));
		System.out.println(reservationService.selectById("member1"));
		/*
		
		System.out.println(reservationService.deletByRsv(5));
		*/

		
		
	}

}
