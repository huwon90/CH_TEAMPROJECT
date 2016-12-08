package com.ch.teampro1.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ch.teampro1.dao.MemberDao;
import com.ch.teampro1.model.Member;

@Service
public class MemberService implements IMemberService {
	@Autowired
	private MemberDao memberDao;
	
	@Override 
	public int joinMember(Member member, HttpSession session) {
		// TODO Auto-generated method stub
		session.setAttribute("mId", member.getmId());
		return memberDao.joinMember(member);
	}
	
	@Override
	public int loginMember(String mId, String mPw, HttpSession session) {
		// TODO Auto-generated method stub
		int result = 0; // 비번 틀림
		Member member = memberDao.detailMember(mId);
		if(member != null){
			if(member.getmPw().equals(mPw)){
				result = 1; //정상적인 로그인 성공
				session.setAttribute("mId", mId);
				session.setAttribute("mName", member.getmName());
				session.setAttribute("ValidMem", "yes");
			}else{
				
			}
		}else{
			result = -1; // 없는 ID
		}
		return result;
	}
	
	@Override
	public Member detailMember(String mId) {
		// TODO Auto-generated method stub
		return memberDao.detailMember(mId);
	}

	@Override
	public int modifyMember(Member member) {
		// TODO Auto-generated method stub
		return memberDao.modifyMember(member);
	}

	@Override
	public int deleteMember(String mId) {
		// TODO Auto-generated method stub
		return memberDao.deleteMember(mId);
	}

	@Override
	public Member findId(Member member) {
		// TODO Auto-generated method stub
		return memberDao.findId(member);
	}
	
	@Override
	public Member findPw(Member member) {
		// TODO Auto-generated method stub
		return memberDao.findPw(member);
	}

}
