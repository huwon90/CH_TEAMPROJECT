package com.ch.teampro1.model;

public class MemberTmConn {
	//pMember
	private String mId;
	private String mPw;
	private String mName;
	private String mPhone1;
	private String mPhone2;
	private String mPhone3;
	private String mEmail;
	private String mAddress;
	//ptmConn
	private int tId;
	private String tName;
	private int tmLeader;
	private int tmOk;
	public String getmId() {
		return mId;
	}
	public void setmId(String mId) {
		this.mId = mId;
	}
	public String getmPw() {
		return mPw;
	}
	public void setmPw(String mPw) {
		this.mPw = mPw;
	}
	public String getmName() {
		return mName;
	}
	public void setmName(String mName) {
		this.mName = mName;
	}
	
	public String getmPhone1() {
		return mPhone1;
	}
	public void setmPhone1(String mPhone1) {
		this.mPhone1 = mPhone1;
	}
	public String getmPhone2() {
		return mPhone2;
	}
	public void setmPhone2(String mPhone2) {
		this.mPhone2 = mPhone2;
	}
	public String getmPhone3() {
		return mPhone3;
	}
	public void setmPhone3(String mPhone3) {
		this.mPhone3 = mPhone3;
	}
	public String getmEmail() {
		return mEmail;
	}
	public void setmEmail(String mEmail) {
		this.mEmail = mEmail;
	}
	public String getmAddress() {
		return mAddress;
	}
	public void setmAddress(String mAddress) {
		this.mAddress = mAddress;
	}
	public int gettId() {
		return tId;
	}
	public void settId(int tId) {
		this.tId = tId;
	}
	public int getTmLeader() {
		return tmLeader;
	}
	public void setTmLeader(int tmLeader) {
		this.tmLeader = tmLeader;
	}
	public int getTmOk() {
		return tmOk;
	}
	public void setTmOk(int tmOk) {
		this.tmOk = tmOk;
	}
	public String gettName() {
		return tName;
	}
	public void settName(String tName) {
		this.tName = tName;
	}
	
}
