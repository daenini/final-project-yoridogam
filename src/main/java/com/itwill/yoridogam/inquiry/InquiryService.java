package com.itwill.yoridogam.inquiry;

import java.util.List;

import com.itwill.yoridogam.notice.paging.PageDto;

public interface InquiryService {

	/*************** 문의글 추가 ***************/
	int insertInquiry(Inquiry inquiry);
	
	/*************** 문의글 수정 ***************/
	int updateInquiry(Inquiry inquiry);
	
	/*************** 문의글 답글 추가 ***************/
	int insertInquiryA(Inquiry inquiry);
	
	/*************** 문의글 답글 수정 ***************/
	int updateInquiryA(Inquiry inquiry);
	
	/*************** 문의글 삭제 ***************/
	int deleteInquiry(int ib_no);
	
	/*************** 문의글 전체 보기 ***************/
	List<Inquiry> inquiryList();
	
	/*************** 문의글 한 개 보기 ***************/
	Inquiry selectByNoInquiry(int ib_no);
	
	/*************** 문의글 조회수 증가 ***************/
	boolean updateInquiryViewCount(int ib_no);
	
	/*************** 문의글 총 개수 ***************/
	int getTotal();
	
	/*************** 페이징 ***************/
	List<Inquiry> getListWithPaging(PageDto pageDto);
}
