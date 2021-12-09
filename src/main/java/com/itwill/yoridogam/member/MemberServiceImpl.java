package com.itwill.yoridogam.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.yoridogam.memberInterest.MemberInterest;
import com.itwill.yoridogam.memberInterest.MemberInterestDao;

@Service("memberService")
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDao memberDao;
	
	@Autowired
	private MemberInterestDao memberInterestDao;
	/*
	 * 회원가입(+관심분야등록)
	 */
	
	@Override
	public int create(Member member) throws Exception {
		// 아이디중복체크
		if (memberDao.existedMember(member.getM_id())) {
			return -1;
		}else {
		memberDao.create(member);
		return 1;
		}
	}
	@Override
	public int createInterest(MemberInterest memberInterest) throws Exception {
		memberInterestDao.create(memberInterest);
		return 1;
		}
	/*
	 * 로그인
	 */
	@Override
	public int login(String sUserId, String password) throws Exception {
		int result=-1;
		//1.아이디 존재여부
		Member member = memberDao.findMember(sUserId);
		if(member==null) {
			result=0;
		}else {
			if(member.getM_pass().equals(password)) {
				result=2;
			}else {
				result=1;
			}
		}
		return result;
	}
	/*
	 * 회원상세정보(+관심분야)
	 */
	@Override
	public Member findMember(String sUserId) throws Exception {
		Member findMember = memberDao.findMember(sUserId);
		return findMember;
	}
	/*
	 * 회원상세정보(+관심분야)
	 */
	@Override
	public List<MemberInterest> getMemberInterestList(String sUserId) throws Exception {
		return memberInterestDao.getMemberInterestList(sUserId);
	}
	/*
	 * 회원수정
	 */
	@Override
	public int update(Member member) throws Exception {
		// 1. 해당 회원 관심강의 삭제 (여러개 선택시 다바껴서... 삭제하고)
		// 좀더 알아보고 수정..
		//2. 회원정보수정
		String sUserId = member.getM_id();
		int count1 = memberInterestDao.remove(sUserId); 
		int count = memberDao.update(member);
		//3. 회원정보 입력

		return count;
	}
	/*
	 * 회원관심분야수정
	 */
	@Override
	public int updateInterest(MemberInterest memberInterest) throws Exception{
		int count = memberInterestDao.create(memberInterest);
		return count;
	}
	/*
	 * 회원탈퇴
	 */
	@Override
	public int remove(String sUserId) throws Exception {
		int count1 = memberInterestDao.remove(sUserId);
		int count2 = memberDao.remove(sUserId);
		return count1+count2; 
	}
	/*
	 * 회원아이디 중복체크
	 */
	@Override
	public boolean isDuplcateUserId(String sUserId) throws Exception {
		boolean isExist = memberDao.existedMember(sUserId);
		if (isExist) {
			return true;
		} else {
			return false;
		}
	}
	

}
