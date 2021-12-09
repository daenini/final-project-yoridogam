package com.itwill.yoridogam.reservation;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("ReservationDao")
public class ReservationDaoImpl implements ReservationDao{
	
	public static final String NAMESPACE="com.itwill.yoridogam.mapper.ReservationMapper.";
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int create(Reservation reservation) throws Exception {
		
		return sqlSession.insert(NAMESPACE+"create",reservation);
	}

	@Override
	public List<Reservation> selectAll(String sUserId) throws Exception {
		
		return sqlSession.selectList(NAMESPACE+"selectAll",sUserId);
	}
	@Override
	public	Reservation selectRsv_no(int rsv_no) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"selectRsv_no",rsv_no);
	}
	

	@Override
	public List<Reservation> selectById(String sUserId) throws Exception {
		
		return sqlSession.selectList(NAMESPACE+"selectById",sUserId);
	}

	@Override
	public Reservation selectByP_no(Reservation reservation) throws Exception {
		
		return sqlSession.selectOne(NAMESPACE+"selectByP_no",reservation);
	}
	
	@Override
	public int deleteById(int rsv_no) throws Exception {
		
		return sqlSession.delete(NAMESPACE+"deleteById",rsv_no);
	}

	@Override
	public int deleteAll(String sUserId) throws Exception {
		
		return sqlSession.delete(NAMESPACE+"deleteAll",sUserId);
	}
	/*
	 <selectAll> 회원의 예약 전체 조회
	*/
	@Override
	public List<Reservation> selectAllbyP(int p_no) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NAMESPACE+"selectAllbyP", p_no);
	}


}
