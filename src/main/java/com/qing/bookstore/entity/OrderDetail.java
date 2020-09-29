package com.qing.bookstore.entity;

import java.io.Serializable;
import java.util.Date;

public class OrderDetail implements Serializable{
	private int id;
	private int oid;
	private int bid;
	private int bookNum;
	private String status;
	
	
	
	public OrderDetail(int oid, int bid, int bookNum, String status) {
		super();
		this.oid = oid;
		this.bid = bid;
		this.bookNum = bookNum;
		this.status = status;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getBookNum() {
		return bookNum;
	}
	public void setBookNum(int bookNum) {
		this.bookNum = bookNum;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "OrderDetail [id=" + id + ", oid=" + oid + ", bid=" + bid + ", bookNum=" + bookNum + ", status=" + status
				+ "]";
	}

	

	public OrderDetail() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getOid() {
		return id;
	}
	public void setOid(int oid) {
		this.id = oid;
	}


	public int getBid() {
		return id;
	}
	public void setBid(int bid) {
		this.id = bid;
	}

	
	
	
	
}
