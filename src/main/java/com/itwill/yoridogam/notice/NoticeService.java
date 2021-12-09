package com.itwill.yoridogam.notice;

import java.util.List;

import com.itwill.yoridogam.notice.paging.PageDto;


public interface NoticeService {

	/*************** 공지사항 추가 ***************/
	int insertNoti(Notice notice);
	
	/*************** 공지사항 수정 ***************/
	int updateNoti(Notice notice);
	
	/*************** 공지사항 삭제 ***************/
	int deleteNoti(int noti_no);
	
	/*************** 공지사항 전체 조회 ***************/
	List<Notice> notiList();
	
	/*************** 공지사항 한 개 보기 ***************/
	Notice selectByNotiNo(int noti_no);
	
	/*************** 공지사항 조회수 증가 ***************/
	boolean updateNotiViewCount(int noti_no);
	
	/*************** 공지사항 총 개수 ***************/
	int getTotal();
	
	/*************** 페이징 ***************/
	List<Notice> getListWithPaging(PageDto pageDto);
	
	
	
}
