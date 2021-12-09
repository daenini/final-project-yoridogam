package com.itwill.yoridogam.memberInterest.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.yoridogam.member.Member;
import com.itwill.yoridogam.member.MemberDao;
import com.itwill.yoridogam.memberInterest.MemberInterest;
import com.itwill.yoridogam.memberInterest.MemberInterestDao;

public class MemberInterestDaoTestMain {

	public static void main(String[] args) throws Exception {
		ApplicationContext applicationContext=
				new ClassPathXmlApplicationContext("spring/application-config.xml");
		MemberInterestDao memberInterestDao = (MemberInterestDao)applicationContext.getBean("memberInterestDao");
		System.out.println(memberInterestDao);
		/*
		 * 관심목록 삭제 
		 */
		
		System.out.println("1. remove : " + memberInterestDao.remove("member2"));
		

		/*
		 * 관심분야 입력 (회원가입시 진행)
		 */
		Member m1 = new Member("member2", "1", "1", "1", "1", "1", "1");
		System.out.println("2. create : " + memberInterestDao.create(new MemberInterest(0, "빵", m1)));
		
		/*
		 * 관심분야 수정
		 */
		
		Member m2 = new Member("member2", "1", "1", "1", "1", "1", "1");
		MemberInterest updateInterest = new MemberInterest(0, "비건", m2);
		System.out.println("3. update : " + memberInterestDao.upate(updateInterest));
		
		/*
		 * 아이디별 관심분야 검색
		 */
		System.out.println("5.find"+memberInterestDao.getMemberInterestList("member1"));
	
	
	}

}
