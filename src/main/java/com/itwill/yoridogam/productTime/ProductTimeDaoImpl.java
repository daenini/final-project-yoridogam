package com.itwill.yoridogam.productTime;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

// productTimeService는 Product에서 구현하기
@Repository("ProductTimeDao")
public class ProductTimeDaoImpl implements ProductTimeDao{
	
public static final String NAMESPACE="com.itwill.yoridogam.mapper.ProductTimeMapper.";
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int create(ProductTime productTime) throws Exception {
		return sqlSession.insert(NAMESPACE+"create",productTime);
	}

	@Override
	public List<ProductTime> selectAll(int p_no) throws Exception {
		return sqlSession.selectList(NAMESPACE+"selectAll",p_no);
	}

	@Override
	public ProductTime selectPtNo(int pt_no) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"selectPtNo",pt_no);
	}
	@Override
	public ProductTime selectPtNo2(ProductTime productTime) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"selectPtNo2",productTime);
	}
	
	@Override
	public int update(ProductTime productTime) throws Exception {
		return sqlSession.update(NAMESPACE+"update",productTime);
	}
	
	@Override
	public int updatePt_rsv(ProductTime productTime) throws Exception {
		return sqlSession.update(NAMESPACE+"updatePt_rsv",productTime);
	}
	
	
	@Override
	public int delete(int pt_no) throws Exception {
		return sqlSession.delete(NAMESPACE+"delete",pt_no);
	}

	@Override
	public List<ProductTime> selectPtTime(ProductTime productTime) throws Exception {
		
		return sqlSession.selectList(NAMESPACE+"selectPtTime", productTime);
	}

	
}
