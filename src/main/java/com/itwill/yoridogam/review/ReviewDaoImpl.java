package com.itwill.yoridogam.review;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReviewDaoImpl implements ReviewDao{
	public static final String NAMESPACE="com.itwill.yoridogam.mapper.ReviewMapper.";
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int create(Review review) throws Exception {
		return sqlSession.insert(NAMESPACE+"insertReview",review);
	}

	@Override
	public int update(Review review) throws Exception {
		return sqlSession.update(NAMESPACE+"modifyReview",review);
	}

	@Override
	public int delete(int r_no) throws Exception {
		return sqlSession.delete(NAMESPACE+"deleteReview",r_no);
	}

	@Override
	public Review reviewOne(int r_no) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"reviewOne",r_no);
	}

	@Override
	public List<Review> reviewAllId(String m_id) throws Exception {
		return sqlSession.selectList(NAMESPACE+"reviewAllId",m_id);
	}

	@Override
	public List<Review> reviewAllPno(int p_no) throws Exception {
		return sqlSession.selectList(NAMESPACE+"reviewAllPno",p_no);
	}
	
	
}
