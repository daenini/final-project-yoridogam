package com.itwill.yoridogam.notice.test;


import java.sql.Date;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.yoridogam.member.Member;
import com.itwill.yoridogam.notice.Notice;
import com.itwill.yoridogam.notice.NoticeService;

public class NoticeServiceTestMain {
	
	public static void main(String[] args)throws Exception{
		ApplicationContext applicationContext=
				new ClassPathXmlApplicationContext("spring/application-config.xml");
		NoticeService noticeService = (NoticeService)applicationContext.getBean("noticeService");
		System.out.println(noticeService);
		
		Member aa=new Member("admin1", "test", "test", "test", "test", "test", "test");
		
		/*공지사항 추가*/
		Notice insertNoti1 = new Notice(0, "공지사항입니다11", new Date(0), 0, "공지사항 내용입니다11", aa);
		Notice insertNoti2 = new Notice(0, "공지사항입니다22", new Date(0), 0, "공지사항 내용입니다22", aa);
		Notice insertNoti3 = new Notice(0, "공지사항입니다33", new Date(0), 0, "공지사항 내용입니다33", aa);
		
		Notice updateNoti1 = new Notice(6, "공지사항 수정입니다11", new Date(0), 0, "공지사항 내용 수정입니다11", aa);
		
		/*추가*/
		/*
		System.out.println(noticeService.insertNoti(insertNoti1));
		System.out.println(noticeService.insertNoti(insertNoti2));
		System.out.println(noticeService.insertNoti(insertNoti3));
		 */
			
		/*전체 보기*/
		System.out.println(noticeService.notiList());
		
		/*글 번호로 보기*/
		System.out.println(noticeService.selectByNotiNo(1));
		
		/*글 수정*/
		//System.out.println(noticeService.updateNoti(updateNoti1));
		
		/*글 삭제*/
		//System.out.println(noticeService.deleteNoti(3));

		/*조회수 추가*/
		System.out.println(noticeService.updateNotiViewCount(1));
		
		/*글 번호로 보기*/
		System.out.println(noticeService.selectByNotiNo(1));
		
	}
}
	
