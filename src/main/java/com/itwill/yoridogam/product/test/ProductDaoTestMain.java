package com.itwill.yoridogam.product.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.yoridogam.product.Product;
import com.itwill.yoridogam.product.ProductDao;
import com.itwill.yoridogam.teacher.Teacher;

public class ProductDaoTestMain {

	public static void main(String[] args)throws Exception{
		ApplicationContext applicationContext=
				new ClassPathXmlApplicationContext("spring/application-config.xml");
		ProductDao productDao = (ProductDao)applicationContext.getBean("productDao");
		System.out.println(productDao);
		
		System.out.println("1. remove : "+productDao.deleteByNo(4));
		//System.out.println("2. create : "+productDao.create(new Product(0, "1r", "detail", "1", "1", "1", "1",new Teacher("teacher3", null, null, null, null, null, null, null, null))));
		
		//System.out.println("3. selectall"+productDao.selectAll());
		//System.out.println("4. selectByno"+productDao.selectByNo(1));
		//Product p1 = new Product(4, "update", "update","update","update", "update", "update",new Teacher("teacher3", null, null, null, null, null, null, null, null));
		//System.out.println("3. update :"+productDao.updateByNo(p1));
		
	
	}

}
