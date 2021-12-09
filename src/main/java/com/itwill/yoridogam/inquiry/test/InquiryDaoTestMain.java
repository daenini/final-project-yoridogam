package com.itwill.yoridogam.inquiry.test;


import java.sql.Date;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.yoridogam.inquiry.Inquiry;
import com.itwill.yoridogam.inquiry.InquiryDao;
import com.itwill.yoridogam.member.Member;


public class InquiryDaoTestMain {
	
	public static void main(String[] args)throws Exception{
		ApplicationContext applicationContext=
				new ClassPathXmlApplicationContext("spring/application-config.xml");
		InquiryDao inquiryDao = (InquiryDao)applicationContext.getBean("inquiryDao");
		System.out.println(inquiryDao);
		
		
		
		/*문의사항 추가*/
		/*
		 insert into INQUIRY 
			VALUES(inquiry_ib_no_SEQ.nextval, '쿠키 수업의 종류에 대해..', '쿠키 수업이 더 많아질 수 있나요?', 
       					sysdate, 0, 0, inquiry_ib_no_SEQ.nextval, 1, 'admin1');
		 */
		Member mm=new Member("mamber4", "test", "test", "test", "test", "test", "test");
		Inquiry insertInq1 = new Inquiry(10, "11월에 추가된 수업을..", "알 수 있는 방법이 있을까요?", new Date(0), 0, 0, 0, 1, mm);
		Inquiry insertInq2 = new Inquiry(0, "12월에 추가된 수업을..", "알 수 있는 방법이 있을까요?", new Date(0), 0, 0, 0, 1, mm);
		Inquiry insertInq3 = new Inquiry(0, "1월에 추가된 수업을..", "알 수 있는 방법이 있을까요?", new Date(0), 0, 0, 0, 1, mm);
		Inquiry updateInq1 = new Inquiry(7, "수정", "수정수정", new Date(0), 0, 0, 0, 1, mm);
		
		Member aa=new Member("admin1", "test", "test", "test", "test", "test", "test");
		Inquiry insertInqA1 = new Inquiry(10, "고객님 답변 드립니다10", "11월 수업 시간표 공지는 말일 홈페이지에서 확인해 주시기 바랍니다.", new Date(0), 0, 1, 10, 2, aa);
		Inquiry insertInqA2 = new Inquiry(12, "고객님 답변 드립니다12", "1월 수업 시간표 공지는 말일 홈페이지에서 확인해 주시기 바랍니다.", new Date(0), 0, 1, 12, 2, aa);
		
		Inquiry updateInqA1 = new Inquiry(10, "수정수정1010", "수정을 확인해 주시기 바랍니다.", new Date(0), 0, 1, 2, 2, aa);
		Inquiry updateInqA2 = new Inquiry(12, "수정수정1212", "수정을 확인해 주시기 바랍니다.", new Date(0), 0, 1, 2, 2, aa);
		//System.out.println(inquiryDao.insertInquiry(insertInq2));
		//System.out.println(inquiryDao.insertInquiry(insertInq3));
		
		/*문의사항 추가*/
		//System.out.println(inquiryDao.insertInquiry(insertInq1));
		//System.out.println(inquiryDao.insertInquiry(insertInq2));
		//System.out.println(inquiryDao.insertInquiry(insertInq3));
		
		/*문의사항 답변 추가*/
		//System.out.println(inquiryDao.insertInquiryA(insertInqA1));
		//System.out.println(inquiryDao.insertInquiryA(insertInqA2));
		/*문의사항 수정*/
		//System.out.println(inquiryDao.updateInquiry(updateInq1));
		
		/*문의사항 답변 수정*/
		//System.out.println(inquiryDao.updateInquiry(updateInqA1));

		/*문의사항 삭제*/
		//System.out.println(inquiryDao.deleteInquiry(8));
		
		/*문의사항 조회수 증가*/
		//System.out.println(inquiryDao.updateInquiryViewCount(9));
		//System.out.println(inquiryDao.updateInquiryViewCount(9));
		//System.out.println(inquiryDao.updateInquiryViewCount(9));
		
		
		/*문의사항 한 개 보기*/
		//System.out.println(inquiryDao.selectByNoInquiry(9));
		
		/*문의사항 답변 여부 보기*/
		//System.out.println(inquiryDao.countA(updateInq1));
		
		/*문의사항 총 개수 보기*/
		//System.out.println(inquiryDao.countTotalInquiry());
		
		/*문의사항 전체 보기*/
		System.out.println(inquiryDao.inquiryList());
		
		
	}
}
	
