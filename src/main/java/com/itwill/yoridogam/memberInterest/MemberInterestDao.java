package com.itwill.yoridogam.memberInterest;

import java.util.ArrayList;
import java.util.List;

public interface MemberInterestDao {
	/*
	 * INSERT 관심분야
	 */
	int create(MemberInterest memberInterest) throws Exception;
	
	
	/*
	 * UPDATE 관심분야()
	 */
	int upate(MemberInterest memberInterest) throws Exception;
	
	/*
	 * 관심강의 찾기
	 */
	List<MemberInterest> getMemberInterestList(String sUserId) throws Exception;
	
	/*
	 * 관심분야 삭제
	 */
	int remove(String sUserId) throws Exception;
	
	
	
	
}
