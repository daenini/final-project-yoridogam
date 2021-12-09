package com.itwill.yoridogam.product.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.yoridogam.product.Product;
import com.itwill.yoridogam.product.ProductDao;
import com.itwill.yoridogam.product.ProductService;
import com.itwill.yoridogam.teacher.Teacher;

public class ProductServiceTestMain {

	public static void main(String[] args)throws Exception{
		ApplicationContext applicationContext=
				new ClassPathXmlApplicationContext("spring/application-config.xml");
		ProductService productService = (ProductService)applicationContext.getBean("productService");
		System.out.println(productService);
		
		//System.out.println("1. remove : "+productService.deleteByNo(4));
		System.out.println("2. create : "+productService.create(new Product(0, "1r", "detail", "1", "1", "1", "1",new Teacher("teacher3", null, null, null, null, null, null, null))));
		
		//System.out.println("3. selectall"+productService.selectAll());
		//System.out.println("4. selectByno"+productService.selectByNo(1));
		//Product p1 = new Product(4, "update", "update","update","update", "update", "update",new Teacher("teacher3", null, null, null, null, null, null, null));
		//System.out.println("5. update :"+productService.updateByNo(p1));
	}

}
