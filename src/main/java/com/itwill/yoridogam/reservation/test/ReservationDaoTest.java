package com.itwill.yoridogam.reservation.test;


import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.yoridogam.member.Member;
import com.itwill.yoridogam.product.Product;
import com.itwill.yoridogam.reservation.Reservation;
import com.itwill.yoridogam.reservation.ReservationDao;

public class ReservationDaoTest {

	public static void main(String[] args) throws Exception {
		ApplicationContext applicationContext=
				new ClassPathXmlApplicationContext("spring/application-config.xml");
		ReservationDao reservationDao=(ReservationDao)applicationContext.getBean("ReservationDao");
		
		//insert
		// reservation(rsv_no, rsv_total, rsv_type, rsv_qty, rsv_date, rsv_time, rsv_paydate, m_id, p_no)

		
			
			System.out.println(reservationDao.create(new Reservation(0, 30000, "카카오페이", 1, "2021/10/21", "10:00-11:00", null,
														new Member("member3",null,null,null,null,null,null), 
														new Product(2,null,null,null,null,null,null,null))));
			
		//selectAll
		// select * from reservation where m_id=#{m_id};
		
			/*
			System.out.println(reservationDao.selectAll("member1"));
			*/
		
		//selectByNo
		//select * from product p join reservation rsv on rsv.p_no=p.p_no where rsv.m_id=#{m_id};
		
			/*
			System.out.println(reservationDao.selectById("member1"));
			*/
		
		//deleteByNo
			/*
			 	System.out.println(reservationDao.deleteById(new Reservation(1, 1, null, 0, null, null, null, null, null)));
			 */
		
		//deleteAll
		
			/*
				System.out.println(reservationDao.deleteAll("member3"));
			// */
		
		/*
		Reservation reservation = new Reservation(0, 30000, "카카오페이", 1, "2021/10/21", "10:00-11:00", null,
										new Member("member2",null,null,null,null,null,null), 
										new Product(3,null,null,null,null,null,null)); // 회원의 DB에 예약할 상품이 있는지 확인하기 위함
		
		Reservation rsvP = reservationDao.selectByP_no(reservation);
		//int rsvP_no = rsvP.getProduct().getP_no();
		if(rsvP == null) {
			reservation.getProduct().setP_no(2);
			System.out.println(reservationDao.selectByP_no(reservation));
		}else {
			System.out.println(rsvP);
		}
		*/
		
		
		
		
		
	}

}
