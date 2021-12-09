package com.itwill.yoridogam.notice.test;


import java.sql.Date;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.yoridogam.member.Member;
import com.itwill.yoridogam.notice.Notice;
import com.itwill.yoridogam.notice.NoticeDao;

public class NoticeDaoTestMain {
	
	public static void main(String[] args)throws Exception{
		ApplicationContext applicationContext=
				new ClassPathXmlApplicationContext("spring/application-config.xml");
		NoticeDao noticeDao = (NoticeDao)applicationContext.getBean("noticeDao");
		System.out.println(noticeDao);
		
		/*공지사항 추가*/
		/*
		Notice insertNoti2 = new Notice(2, "공지사항입니다2", new Date(0), 0, "공지사항 내용입니다2", null);
		Notice insertNoti3 = new Notice(2, "공지사항입니다3", new Date(0), 0, "공지사항 내용입니다3", null);
		Notice updateNoti1 = new Notice(2, "공지사항 수정입니다1", new Date(0), 0, "공지사항 내용 수정입니다1", null);
		*/
		Member aa=new Member("admin1", "test", "test", "test", "test", "test", "test");
		Notice insertNoti1 = new Notice(0, "공지사항입니다1", new Date(0), 0, "공지사항 내용입니다4", aa);
		Notice insertNoti2 = new Notice(0, "공지사항입니다2", new Date(0), 0, "공지사항 내용입니다4", aa);
		Notice insertNoti3 = new Notice(0, "공지사항입니다3", new Date(0), 0, "공지사항 내용입니다4", aa);
		
		Notice updateNoti1 = new Notice(12, "수정 확인하겠습니다", new Date(0), 0, "공지사항 내용입니다4", aa);
		
		//System.out.println(noticeDao.insertNoti(insertNoti1));
		//System.out.println(noticeDao.insertNoti(insertNoti2));
		//System.out.println(noticeDao.insertNoti(insertNoti3));
		
		//System.out.println(noticeDao.insertNoti(insertNoti100));
		
		
		/*글 수정*/
		System.out.println(noticeDao.updateNoti(updateNoti1));
		/*글 번호로 보기*/
		System.out.println(noticeDao.selectByNotiNo(12));
		
		/*글 삭제*/
		//System.out.println(noticeDao.deleteNoti(5));
		
		/*조회수 추가*/
		//System.out.println(noticeDao.countAllNoti());
		
		
		/*전체 보기*/
		System.out.println(noticeDao.notiList());

		
	}
}
	
