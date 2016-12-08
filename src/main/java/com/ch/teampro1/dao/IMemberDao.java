package com.ch.teampro1.dao;

import com.ch.teampro1.model.Member;

public interface IMemberDao { 
	public int joinMember(Member member);
	public Member detailMember(String mId);
	public int modifyMember(Member member);
	public int deleteMember(String mId);
	public Member findId(Member member);
	public Member findPw(Member member);
}
