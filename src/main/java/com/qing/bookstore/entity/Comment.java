package com.qing.bookstore.entity;

import java.io.Serializable;
import java.util.Date;

public class Comment implements Serializable{
	private int cid;
	private int bid;
	private int uid;
	private Date date;
	private String content;
	
	
	public Comment(int bid, int uid, Date date, String content) {
		super();
		this.bid = bid;
		this.uid = uid;
		this.date = date;
		this.content = content;
	}
	public int getUid() {
		return cid;
	}
	public void setUid(int uid) {
		this.cid = uid;
	}
	
	

	public Comment() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getOid() {
		return cid;
	}
	public void setOid(int oid) {
		this.cid = oid;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	@Override
	public String toString() {
		return "comment [oid=" + cid + ", bid=" + bid + ", uid=" + uid + ", date=" + date + ", content=" + content
				+ "]";
	}
	
	
	
}
