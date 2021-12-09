package com.itwill.yoridogam.review;

import java.util.List;

public interface ReviewService {
	
	int create(Review review) throws Exception;
	
	int update(Review review) throws Exception;
	
	int delete(int r_no)throws Exception;
	
	Review reviewOne(int r_no)throws Exception;
	
	List<Review> reviewAllId(String m_id)throws Exception;
	
	List<Review> reviewAllPno(int p_no)throws Exception;
}
