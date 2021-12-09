package com.itwill.yoridogam.inquiry;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.yoridogam.notice.paging.PageDto;
@Service("inquiryService")
public class InquiryServiceImpl implements InquiryService {
	@Autowired
	private InquiryDao inquiryDao;
	
	@Override
	public int insertInquiry(Inquiry inquiry) {
		return inquiryDao.insertInquiry(inquiry);
	}

	@Override
	public int updateInquiry(Inquiry inquiry) {
		return inquiryDao.updateInquiry(inquiry);
	}

	@Override
	public int insertInquiryA(Inquiry inquiry) {
		return inquiryDao.insertInquiryA(inquiry);
	}

	@Override
	public int updateInquiryA(Inquiry inquiry) {
		return inquiryDao.updateInquiryA(inquiry);
	}

	@Override
	public int deleteInquiry(int ib_no) {
		return inquiryDao.deleteInquiry(ib_no);
	}

	@Override
	public List<Inquiry> inquiryList() {
		return inquiryDao.inquiryList();
	}

	@Override
	public Inquiry selectByNoInquiry(int ib_no) {
		return inquiryDao.selectByNoInquiry(ib_no);
	}

	@Override
	public boolean updateInquiryViewCount(int ib_no) {
		boolean result = false;
		result = inquiryDao.updateInquiryViewCount(ib_no);
		return result;
	}
	/*************** 문의 총 개수 ***************/
	@Override
	public int getTotal() {
		return inquiryDao.getTotal();
	}

	/*************** 페이징 ***************/
	@Override
	public List<Inquiry> getListWithPaging(PageDto pageDto) {
		return inquiryDao.getListWithPaging(pageDto);
	}


}
