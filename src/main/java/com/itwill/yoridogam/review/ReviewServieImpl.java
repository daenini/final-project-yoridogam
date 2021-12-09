package com.itwill.yoridogam.review;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("reviewService")
public class ReviewServieImpl implements ReviewService{

	@Autowired
	private ReviewDao reviewDao;

	@Override
	public int create(Review review) throws Exception {
		return reviewDao.create(review);
	}

	@Override
	public int update(Review review) throws Exception {
		return reviewDao.update(review);
	}

	@Override
	public int delete(int r_no) throws Exception {
		return reviewDao.delete(r_no);
	}

	@Override
	public Review reviewOne(int r_no) throws Exception {
		return reviewDao.reviewOne(r_no);
	}

	@Override
	public List<Review> reviewAllId(String m_id) throws Exception {
		return reviewDao.reviewAllId(m_id);
	}

	@Override
	public List<Review> reviewAllPno(int p_no) throws Exception {
		return reviewDao.reviewAllPno(p_no);
	}
	
	
}
