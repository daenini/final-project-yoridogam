package com.itwill.yoridogam.pay.pay;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("payDao")
public class PayDaoImpl implements PayDao{
	public static final String NAMESPACE="com.itwill.yoridogam.mapper.PayMapper.";
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int createPay(Pay pay) throws Exception{
		sqlSession.insert(NAMESPACE+"createPay",pay);
		return pay.getPay_no();
	}

	@Override
	public int deletePayByNo(int pay_no) throws Exception{
		return sqlSession.delete(NAMESPACE+"deletePayByNo",pay_no);
	}

	@Override
	public int deletePay(String sUserId) throws Exception{
		return sqlSession.delete(NAMESPACE+"deletePay",sUserId);
	}

	@Override
	public boolean isExistPay(String sUserId) throws Exception{
		boolean isExistPay=true;
		int payCount=sqlSession.selectOne(NAMESPACE+"isExistPay",sUserId);
		if(payCount==0) {
			isExistPay=false;
		}
		return isExistPay;
	}

	@Override
	public Pay findPayByNo(int pay_no) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"findPayByNo",pay_no);
	}

	@Override
	public List<Pay> findPayList(String sUserId) throws Exception{
		return sqlSession.selectList(NAMESPACE+"findPayList",sUserId);
	}

	@Override
	public List<Pay> findPayDetailList(String sUserId) throws Exception{
		return sqlSession.selectList(NAMESPACE+"findPayDetailList",sUserId);
	}

	@Override
	public Pay findPayDetailByNo(int pay_no) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"findPayDetailByNo",pay_no);
	}

}
