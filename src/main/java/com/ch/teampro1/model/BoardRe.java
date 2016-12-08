package com.ch.teampro1.model;

import java.sql.Timestamp;

public class BoardRe {
	private int tId;
    private int bId;
    private int brId;
	private String mId;
    private String bRcontent;
    private Timestamp bRDate;
    private String brDeleteYN;    
    private int brParent;
    private int brDepth;
    private int brOrder;
    
    
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
	public int getBrParent() {
		return brParent;
	}
	public void setBrParent(int brParent) {
		this.brParent = brParent;
	}
	public int getBrDepth() {
		return brDepth;
	}
	public void setBrDepth(int brDepth) {
		this.brDepth = brDepth;
	}
	public int getBrOrder() {
		return brOrder;
	}
	public void setBrOrder(int brOrder) {
		this.brOrder = brOrder;
	}
    
   
    
    
}
