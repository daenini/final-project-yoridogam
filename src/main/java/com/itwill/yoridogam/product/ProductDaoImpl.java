package com.itwill.yoridogam.product;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.yoridogam.teacher.Teacher;

@Repository("productDao")
public class ProductDaoImpl implements ProductDao {
	public static final String NAMESPACE="com.itwill.yoridogam.mapper.ProductMapper.";
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int create(Product product) throws Exception{
		sqlSession.insert(NAMESPACE+"create",product);
		return product.getP_no();
	}
	@Override
	public int updateByNo(Product product) throws Exception{
		return sqlSession.update(NAMESPACE+"updateByNo",product);
	}
	@Override
	public List<Product> selectAll() throws Exception{
		return sqlSession.selectList(NAMESPACE+"selectAll");
	}
	@Override
	public Product selectByNo(int p_no) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"selectByNo",p_no);
	}
	@Override
	public int deleteByNo(int p_no) throws Exception{
		return sqlSession.delete(NAMESPACE+"deleteByNo",p_no);
	}
	
	/*  상품 강사 정보 얻기 */
	public Teacher selectTByP_no(int p_no)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"selectTByP_no",p_no);
	}
	/* 강사 아이디 받아서 상품 정보 얻기 */
	@Override
	public List<Product> selectpByT_id(String t_id) throws Exception {
		
		return sqlSession.selectList(NAMESPACE+"selectpByT_id",t_id);
	}

	/* 강사,상품 조건없이 */
	@Override
	public List<Product> selectPTAll() throws Exception {
		return sqlSession.selectList(NAMESPACE+"selectPTAll");
	}
}
