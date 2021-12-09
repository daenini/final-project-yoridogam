package com.itwill.yoridogam.product;

import java.util.List;

import com.itwill.yoridogam.teacher.Teacher;

public interface ProductService {

	int create(Product product) throws Exception;

	int updateByNo(Product product) throws Exception;

	List<Product> selectAll() throws Exception;

	Product selectByNo(int p_no) throws Exception;

	int deleteByNo(int p_no) throws Exception;
	
	/*  상품 강사 정보 얻기 */
	Teacher selectTByP_no(int p_no)throws Exception;
	
	/* 강사 아이디 받아서 상품정보 뽑기 */
	List<Product>selectpByT_id(String t_id)throws Exception;
	
	/*  상품 강사 조건 없이 */
	List<Product> selectPTAll()throws Exception;
}