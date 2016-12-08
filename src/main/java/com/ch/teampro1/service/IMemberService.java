package com.ch.teampro1.service;

import javax.servlet.http.HttpSession;

import com.ch.teampro1.model.Member;

public interface IMemberService {
	public int joinMember(Member member, HttpSession session);
	public int loginMember(String mId, String mPw, HttpSession session);
	public Member detailMember(String mId);
	public int modifyMember(Member member);
	public int deleteMember(String mId);
	public Member findId(Member member);
	public Member findPw(Member member);
}
