package com.qing.bookstore.entity;

import java.io.Serializable;

public class BuyCar implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -2879255592207709925L;
	private int id;
	private int uid;
	private int bid;
	private int num;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	
	public BuyCar() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	@Override
	public String toString() {
		return "BuyCar [id=" + id + ", uid=" + uid + ", bid=" + bid + ", num=" + num + "]";
	}
	public BuyCar(int uid, int bid, int num) {
		super();
		this.uid = uid;
		this.bid = bid;
		this.num = num;
	}
	
}
