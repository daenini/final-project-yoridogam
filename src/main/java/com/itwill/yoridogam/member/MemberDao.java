package com.itwill.yoridogam.member;

import java.util.List;

public interface MemberDao {
	/*
	 * INSERT 회원가입 (사용자생성)
	 */
	/*
	 * 		1) 회원가입 진행시, 인자를 user와  관심분야(String m_interest)를 받아서 
	 * 		2) user는 member테이블 저장 member_insert 
	 * 		3) m_interest는 member_interest 테이블에 저장
	 * 		이게 가능한가...?
	 */
	int create(Member member) throws Exception;
	/*
	 * UPDATE 사용자 정보 수정 (회원수정)
	 */
	int update(Member member) throws Exception;
	
	/*
	 * SELECT_BY_ID 회원정보 상세 조회
	 */
	Member findMember(String sUserId) throws Exception;
	
	/*
	 * REMOVE 회원정보 삭제
	 */
	int remove(String sUserId) throws Exception;
	/*
	 * SELECT ALL회원전체리스트 출력
	 */
	List<Member> findMemberList() throws Exception;
	/*
	 * isExisted 아이디 중복검사
	 */
	boolean existedMember(String sUserId) throws Exception;
}
