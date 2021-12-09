package com.itwill.yoridogam.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.yoridogam.teacher.Teacher;

@Service("productService")
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductDao productDao;
	
	@Override
	public int create(Product product) throws Exception{
		productDao.create(product);
		return product.getP_no();
	}
	@Override
	public int updateByNo(Product product) throws Exception{
		return productDao.updateByNo(product);
	}
	@Override
	public List<Product> selectAll() throws Exception{
		return productDao.selectAll();
	}
	@Override
	public Product selectByNo(int p_no) throws Exception{
		return productDao.selectByNo(p_no);
	}
	@Override
	public int deleteByNo(int p_no) throws Exception{
		return productDao.deleteByNo(p_no);
	}
	
	/*  상품 강사 정보 얻기 */
	@Override
	public Teacher selectTByP_no(int p_no) throws Exception {
		// TODO Auto-generated method stub
		return productDao.selectTByP_no(p_no);
	}
	/* 강사 아이디 받아서 상품 정보 얻기 */
	@Override
	public List<Product> selectpByT_id(String t_id) throws Exception {
		// TODO Auto-generated method stub
		return productDao.selectpByT_id(t_id);
	}
	
	@Override
	public List<Product> selectPTAll() throws Exception {
		return productDao.selectPTAll();
	}
}
