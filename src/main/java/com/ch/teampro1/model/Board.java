package com.ch.teampro1.model;

import java.sql.Timestamp;


public class Board {
	private String mId;
	private int tId;
	private int bId;
	private String bContent;
	private Timestamp bDate;
	private int bNo;
	private int bfId;
	private String bfName;
	private int biId;
	private String biName;
	private String bStart;
	private String bEnd;
	private String bTitle;
	private String bLoc;
	private String bMemo;
	public String getmId() {
		return mId;
	}
	public void setmId(String mId) {
		this.mId = mId;
	}
	public int gettId() {
		return tId;
	}
	public void settId(int tId) {
		this.tId = tId;
	}
	public int getbId() {
		return bId;
	}
	public void setbId(int bId) {
		this.bId = bId;
	}
	public String getbContent() {
		return bContent;
	}
	public void setbContent(String bContent) {
		this.bContent = bContent;
	}
	public Timestamp getbDate() {
		return bDate;
	}
	public void setbDate(Timestamp bDate) {
		this.bDate = bDate;
	}
	public int getbNo() {
		return bNo;
	}
	public void setbNo(int bNo) {
		this.bNo = bNo;
	}
	public int getBfId() {
		return bfId;
	}
	public void setBfId(int bfId) {
		this.bfId = bfId;
	}
	public String getBfName() {
		return bfName;
	}
	public void setBfName(String bfName) {
		this.bfName = bfName;
	}
	public int getBiId() {
		return biId;
	}
	public void setBiId(int biId) {
		this.biId = biId;
	}
	public String getBiName() {
		return biName;
	}
	public void setBiName(String biName) {
		this.biName = biName;
	}
	public String getbStart() {
		return bStart;
	}
	public void setbStart(String bStart) {
		this.bStart = bStart;
	}
	public String getbEnd() {
		return bEnd;
	}
	public void setbEnd(String bEnd) {
		this.bEnd = bEnd;
	}
	public String getbTitle() {
		return bTitle;
	}
	public void setbTitle(String bTitle) {
		this.bTitle = bTitle;
	}
	public String getbLoc() {
		return bLoc;
	}
	public void setbLoc(String bLoc) {
		this.bLoc = bLoc;
	}
	public String getbMemo() {
		return bMemo;
	}
	public void setbMemo(String bMemo) {
		this.bMemo = bMemo;
	}
}
