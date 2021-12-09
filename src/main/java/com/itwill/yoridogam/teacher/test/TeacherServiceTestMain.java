package com.itwill.yoridogam.teacher.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


import com.itwill.yoridogam.product.Product;
import com.itwill.yoridogam.teacher.Teacher;
import com.itwill.yoridogam.teacher.TeacherService;

public class TeacherServiceTestMain {
	public static void main(String[] args)throws Exception{
		ApplicationContext applicationContext=
				new ClassPathXmlApplicationContext("spring/application-config.xml");
		TeacherService teacherService=(TeacherService) applicationContext.getBean("teacherService");
		System.out.println(teacherService);
		
		/*
		 * 강사탈퇴
		 */
		System.out.println("1. removeTeacher"+teacherService.remove("teacher3"));
		/*
		 *  강사가입
		 */
		
		Teacher t1 = new Teacher("teacher3", "test", "test","test", "test", "test", "test", "test");
		System.out.println("2.teacherInsert : " +teacherService.create(t1));
		
		/*
		 * 강사정보
		 */
		System.out.println("3. teacherDetail :"+teacherService.findMember("teacher3"));
		/*
		 * 강사수정
		 */
		Teacher t2 = new Teacher("teacher2", "update","update","update", "update", "update", "update", "update");
		System.out.println("4.teacherUpdate : " +teacherService.update(t2));
		
		/*
		 * 강사리스트
		 */
		System.out.println("5.teahcerList"+teacherService.getTeacherList());
		
		/*
		 * 로그인
		 */
		System.out.println("6.login : "+ teacherService.login("teacher1", "update"));
	
	}
}
