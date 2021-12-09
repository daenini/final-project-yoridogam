package com.itwill.yoridogam.member;

import java.util.List;

import com.itwill.yoridogam.memberInterest.MemberInterest;

public interface MemberService {
	
	/*
	 * 회원가입(+회원관심분야) 
	 */
	int create(Member member) throws Exception;
	int createInterest(MemberInterest memberInterest) throws Exception;
	
	/*
	 * 회원 로그인
	 */
	int login(String sUserId, String password) throws Exception;
	/*
	 * 회원상세정보(+관심분야)
	 */
	Member findMember(String sUserId) throws Exception;
	/*
	 * 회원상세정보(+관심분야)
	 */
	List<MemberInterest> getMemberInterestList(String sUserId) throws Exception;
	/*
	 * 회원수정
	 */
	int update(Member member) throws Exception;
	int updateInterest(MemberInterest memberInterest) throws Exception;
	/*
	 * 회원탈퇴
	 */
	int remove(String sUserId) throws Exception;
	/*
	 * 회원아이디 중복체크
	 */
	boolean isDuplcateUserId(String sUserId) throws Exception;
}
