package com.itwill.yoridogam.memberInterest;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.yoridogam.teacher.Teacher;

@Repository("memberInterestDao")
public class MemberInterestDaoImpl implements MemberInterestDao {

	public static final String NAMESPACE="com.itwill.yoridogam.mapper.MemberInterestMapper.";
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int create(MemberInterest memberInterest) throws Exception {
		return sqlSession.insert(NAMESPACE+"create",memberInterest);
	}

	@Override
	public int upate(MemberInterest memberInterest) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.update(NAMESPACE+"update",memberInterest);
	}

	@Override
	public List<MemberInterest> getMemberInterestList(String sUserId) throws Exception {
		List<MemberInterest> miList = sqlSession.selectList(NAMESPACE+"getMemberInterestList",sUserId);
		ArrayList<MemberInterest> memeberInterestList=(ArrayList<MemberInterest>)miList;
		return memeberInterestList;
	}

	@Override
	public int remove(String sUserId) throws Exception {
		return sqlSession.delete(NAMESPACE+"remove",sUserId);
	}



	
}
