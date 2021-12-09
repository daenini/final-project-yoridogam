package com.itwill.yoridogam.teacher.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.yoridogam.member.Member;
import com.itwill.yoridogam.product.Product;
import com.itwill.yoridogam.teacher.Teacher;
import com.itwill.yoridogam.teacher.TeacherDao;



public class TeacherDaoTestMain {

	public static void main(String[] args) throws Exception {
		ApplicationContext applicationContext=
				new ClassPathXmlApplicationContext("spring/application-config.xml");
		TeacherDao teacherDao = (TeacherDao)applicationContext.getBean("teacherDao");
		System.out.println(teacherDao);
		/*
		 *강사탈퇴 
		 */
		System.out.println("1. remove :"+teacherDao.remove("teacher3"));
		
		/*
		 * 강사가입
		 */
		
		System.out.println("2. create : "+teacherDao.create(new Teacher("teacher3", "mim", "3333","010-7777-7777", "njnj@naver.com", "이미지3", "상세3", "서울" )));
		 
		
		/*
		 * 강사수정
		 */
		
		Teacher updateTeacher = new Teacher("teacher1", "kim(수정)", "1111","010-(수정)","1@www.com(수정)", "이미지1(수정)", "상세1(수정)", "(수정)");
		System.out.println("3.update :"+teacherDao.update(updateTeacher));
		/*
		 * 회원상세 
		 */
		System.out.println("4.findTeacher :"+teacherDao.findTeacher("teacher1"));
		/*
		 * 강사님 리스트
		 */
		System.out.println("4.findTeacher :"+teacherDao.findTeacherList());
		
		/*
		 * 아이디 중복검사
		 */
		System.out.println("5.existedTeacher :"+teacherDao.existedTeacher("teacher5"));
		
	}

}
