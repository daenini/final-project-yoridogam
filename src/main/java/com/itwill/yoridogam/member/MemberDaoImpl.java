package com.itwill.yoridogam.member;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("memberDao")
public class MemberDaoImpl implements MemberDao {
	
	public static final String NAMESPACE="com.itwill.yoridogam.mapper.MemberMapper.";
	
	@Autowired
	private SqlSession sqlSession;
	/*
	 * 		1) 회원가입 진행시, 인자를 user와  관심분야(String m_interest)를 받아서 
	 * 		2) user는 member테이블 저장 member_insert 
	 * 		3) m_interest는 member_interest 테이블에 저장
	 * 		이게 가능한가...?
	 */
	/*
	 *  관심분야 처리는 좀 더 생각을 해보겠습니다.... 
	 *  member 테이블 + member_interest 테이블
	 */
	@Override
	public int create(Member member) throws Exception {
		return sqlSession.insert(NAMESPACE+"create",member); 
	}

	@Override
	public int update(Member member) throws Exception {
		return sqlSession.update(NAMESPACE+"update", member);
	}

	@Override
	public Member findMember(String sUserId) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"findMember", sUserId);
	}

	@Override
	public int remove(String sUserId) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.delete(NAMESPACE+"remove", sUserId);
	}
	/*
	@Override
	public List<Member> findMemberList() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	*/
	@Override
	public boolean existedMember(String sUserId) throws Exception {
		int count = sqlSession.selectOne(NAMESPACE+"existedMember",sUserId);
		if(count==1) {
			return true;
		}else {
			return false;
		}
	}

	@Override
	public List<Member> findMemberList() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
