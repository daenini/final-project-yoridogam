package com.itwill.yoridogam.member.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.yoridogam.member.Member;
import com.itwill.yoridogam.member.MemberDao;

public class MemberDaoTestMain {
	
	public static void main(String[] args)throws Exception{
		ApplicationContext applicationContext=
				new ClassPathXmlApplicationContext("spring/application-config.xml");
		MemberDao memberDao = (MemberDao)applicationContext.getBean("memberDao");
		System.out.println(memberDao);
		/*
		 *회원탈퇴 
		 */
		System.out.println("1. remove :"+memberDao.remove("member4"));
		/*
		 * 회원가입
		 */
		System.out.println("2. create : "+memberDao.create(new Member("member4","김첨지3","1111","서울시","kkihon@naver.com","010-8888-8888","남자")));
		
		/*
		 * 회원수정
		 */
		Member updateMember = new Member("member1", "프프", "2323", "부천시", "mm@naver.com", "010-8787-8787", "여성");
		System.out.println("3.update :"+memberDao.update(updateMember));
		/*
		 * 회원상세 
		 */
		System.out.println("4.findMember :"+memberDao.findMember("member1"));
		/*
		 * 아이디 중복검사
		 */
		System.out.println("5.existedMember :"+memberDao.existedMember("member4"));
		
	}
}
	
