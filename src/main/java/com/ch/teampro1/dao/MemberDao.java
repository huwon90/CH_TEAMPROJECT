package com.ch.teampro1.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ch.teampro1.model.Member;

@Repository 
public class MemberDao implements IMemberDao {
	@Autowired
	private SqlSession session;
	
	@Override
	public int joinMember(Member member) {
		// TODO Auto-generated method stub
		return session.insert("joinMember", member);
	}
	
	@Override
	public Member detailMember(String mId) {
		// TODO Auto-generated method stub
		return session.selectOne("detailMember", mId);
	}

	@Override
	public int modifyMember(Member member) {
		// TODO Auto-generated method stub
		return session.update("modifyMember", member);
	}

	@Override
	public int deleteMember(String mId) {
		// TODO Auto-generated method stub
		return session.update("deleteMember", mId);
	}

	@Override
	public Member findId(Member member) {
		// TODO Auto-generated method stub
		return session.selectOne("findId", member);
	}
	
	@Override
	public Member findPw(Member member) {
		// TODO Auto-generated method stub
		return session.selectOne("findPw", member);
	}
	
}
