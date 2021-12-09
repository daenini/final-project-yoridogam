package com.itwill.yoridogam.member.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.yoridogam.member.Member;
import com.itwill.yoridogam.member.MemberService;
import com.itwill.yoridogam.memberInterest.MemberInterest;

public class MemberServiceTestMain {

	public static void main(String[] args)throws Exception{
		ApplicationContext applicationContext=
				new ClassPathXmlApplicationContext("spring/application-config.xml");
		MemberService memberService=(MemberService) applicationContext.getBean("memberService");
		System.out.println(memberService);
		/*
		 * 회원탈퇴
		 */
		System.out.println("1. removeMember"+memberService.remove("member56"));
		
		/*
		 *  회원가입
		 */
		Member m4 = new Member("member56", "test", "test", "test", "test", "test", "test");
		MemberInterest mi4 = new MemberInterest(0, "빵", m4);
		
		System.out.println("2.insertMember : " +memberService.create(m4));
		System.out.println("2.insertMember : " +memberService.createInterest(mi4));
		
		/*
		 * 회원수정
		 */
		Member m5 = new Member("member56", "update", "update", "update", "update", "update", "update");
		MemberInterest mi5 = new MemberInterest(0, "비건", m4);
		System.out.println("3.updateeMember : " +memberService.update(m5));
		System.out.println("4.updateInterest" +memberService.updateInterest(mi5));
		
		/*
		 * 회원상세정보
		 */
		System.out.println("4.detailMember :"+memberService.findMember("member56"));
		System.out.println("5.detailMember :"+memberService.getMemberInterestList("member56"));
		
		/*
		 * 로그인
		 */
		System.out.println("6.login :"+memberService.login("member56", "update"));
	}

}
