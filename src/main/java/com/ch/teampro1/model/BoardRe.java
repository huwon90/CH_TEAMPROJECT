package com.ch.teampro1.model;

import java.sql.Timestamp;

public class BoardRe {
	private String mId;
	private int tId;
    private int bId;
    private int brId;
    private String bRcontent;
    private Timestamp bRDate;
    private String brDeleteYN;    
    
	public int gettId() {
		return tId;
	}
	public void settId(int tId) {
		this.tId = tId;
	}
	public String getmId() {
		return mId;
	}
	public void setmId(String mId) {
		this.mId = mId;
	}
	public int getbId() {
		return bId;
	}
	public void setbId(int bId) {
		this.bId = bId;
	}
	public int getBrId() {
		return brId;
	}
	public void setBrId(int brId) {
		this.brId = brId;
	}
	public String getbRcontent() {
		return bRcontent;
	}
	public void setbRcontent(String bRcontent) {
		this.bRcontent = bRcontent;
	}
	public Timestamp getbRDate() {
		return bRDate;
	}
	public void setbRDate(Timestamp bRDate) {
		this.bRDate = bRDate;
	}
	public String getBrDeleteYN() {
		return brDeleteYN;
	}
	public void setBrDeleteYN(String brDeleteYN) {
		this.brDeleteYN = brDeleteYN;
	}
}
