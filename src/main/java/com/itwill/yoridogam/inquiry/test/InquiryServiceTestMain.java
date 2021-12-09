package com.itwill.yoridogam.inquiry.test;


import java.sql.Date;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.yoridogam.inquiry.Inquiry;
import com.itwill.yoridogam.inquiry.InquiryDao;
import com.itwill.yoridogam.inquiry.InquiryService;
import com.itwill.yoridogam.member.Member;


public class InquiryServiceTestMain {
	
	public static void main(String[] args)throws Exception{
		ApplicationContext applicationContext=
				new ClassPathXmlApplicationContext("spring/application-config.xml");
		InquiryService inquiryService = (InquiryService)applicationContext.getBean("inquiryService");
		System.out.println(inquiryService);
		
		
		
		/*
		 insert into INQUIRY 
			VALUES(inquiry_ib_no_SEQ.nextval, '쿠키 수업의 종류에 대해..', '쿠키 수업이 더 많아질 수 있나요?', 
       					sysdate, 0, 0, inquiry_ib_no_SEQ.nextval, 1, 'admin1');
		 */
		Member mm=new Member("mamber1", "test", "test", "test", "test", "test", "test");
		Member aa=new Member("admin1", "test", "test", "test", "test", "test", "test");
		Inquiry insertInq1 = new Inquiry(0, "11월에 추가된 수업을..11", "알 수 있는 방법이 있을까요?", new Date(0), 0, 0, 10, 1, mm);
		Inquiry insertInq2 = new Inquiry(0, "11월에 추가된 수업을..", "알 수 있는 방법이 있을까요?", new Date(0), 0, 0, 0, 1, mm);
		Inquiry insertInq3 = new Inquiry(0, "11월에 추가된 수업을..", "알 수 있는 방법이 있을까요?", new Date(0), 0, 0, 0, 1, mm);
		
		Inquiry insertInqA1 = new Inquiry(0, "고객님 답변 드립니다11", "11월 수업 시간표 공지는 말일 홈페이지에서 확인해 주시기 바랍니다.", new Date(0), 0, 1, 6, 2, aa);
		Inquiry updateInq1 = new Inquiry(10, "수정11", "수정수정11", new Date(0), 0, 0, 0, 1, mm);
		Inquiry updateInqA1 = new Inquiry(10, "수정수정11", "수정을 확인해 주시기 바랍니다.11", new Date(0), 0, 1, 2, 2, aa);
		//System.out.println(inquiryService.insertInquiry(insertInq2));
		//System.out.println(inquiryService.insertInquiry(insertInq3));
		/*문의사항 추가*/
		//System.out.println(inquiryService.insertInquiry(insertInq1));
		
		/*문의사항 답변 추가*/
		//System.out.println(inquiryService.insertInquiryA(insertInqA1));
		
		/*문의사항 수정*/
		//System.out.println(inquiryService.updateInquiry(updateInq1));
		
		/*문의사항 총 개수 보기*/
		//System.out.println(inquiryService.countTotalInquiry());
		
		/*문의사항 답변 수정*/
		//System.out.println(inquiryService.updateInquiry(updateInq1));

		/*문의사항 삭제*/
		//System.out.println(inquiryService.deleteInquiry(8));
		
		/*문의사항 조회수 증가*/
		//System.out.println(inquiryService.updateInquiryViewCount(9));
		//System.out.println(inquiryService.updateInquiryViewCount(9));
		//System.out.println(inquiryService.updateInquiryViewCount(9));
		
		
		/*문의사항 한 개 보기*/
		//System.out.println(inquiryService.selectByNoInquiry(10));
		
		/*문의사항 전체 보기*/
		System.out.println(inquiryService.inquiryList());
		
		
	}
}
	
