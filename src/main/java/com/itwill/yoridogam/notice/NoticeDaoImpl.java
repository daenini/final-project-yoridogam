package com.itwill.yoridogam.notice;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.yoridogam.notice.paging.PageDto;




@Repository("noticeDao")
public class NoticeDaoImpl implements NoticeDao {
	public static final String NAMESPACE="com.itwill.yoridogam.mapper.NoticeMapper.";
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int insertNoti(Notice notice) {
		sqlSession.insert(NAMESPACE+"insertNoti", notice);
		return notice.getNoti_no();
	}

	@Override
	public int updateNoti(Notice notice) {
		sqlSession.update(NAMESPACE+"updateNoti", notice);
		return notice.getNoti_no();
	}

	@Override
	public int deleteNoti(int noti_no) {
		return sqlSession.delete(NAMESPACE+"deleteNoti", noti_no);
	}

	@Override
	public List<Notice> notiList() {
		List<Notice> noticeList = sqlSession.selectList(NAMESPACE+"notiList");
		//Collections.reverse(noticeList);
		return noticeList;
	}

	@Override
	public Notice selectByNotiNo(int noti_no) {
		Notice notice = sqlSession.selectOne(NAMESPACE+"selectByNotiNo", noti_no);
		return notice;
	}

	@Override
	public boolean updateNotiViewCount(int noti_no) {
		boolean result = false;
		int notiViewCount = sqlSession.update(NAMESPACE+"updateNotiViewCount", noti_no);
		if (notiViewCount>0) {
			result = true;
		}
		return result;
	}

	@Override
	public int getTotal() {
		return sqlSession.selectOne(NAMESPACE+"getTotal");
	}
	
	/*************** 페이징 ***************/
	@Override
	public List<Notice> getListWithPaging(PageDto pageDto) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", pageDto.getStart());
		map.put("end", pageDto.getEnd());
		return sqlSession.selectList(NAMESPACE+"getListWithPaging", map);
	}


	
}

