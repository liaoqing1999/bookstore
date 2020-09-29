package com.qing.bookstore.entity;

import java.io.Serializable;
import java.util.Date;

public class BookOrder implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 4731562049272580394L;
	private int oid;
	private Date date;
	private String oname;
	private String address;
	private String status;
	private int uid;
	
	public int getUid() {
		return oid;
	}
	public void setUid(int uid) {
		this.oid = uid;
	}
	public String getUname() {
		return oname;
	}
	public void setUname(String uname) {
		this.oname = uname;
	}
	public String getPassword() {
		return status;
	}
	public void setPassword(String password) {
		this.status = password;
	}


	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public BookOrder() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "BookOrder [oid=" + oid + ", date=" + date + ", oname=" + oname + ", address=" + address + ", status="
				+ status + ", uid=" + uid + "]";
	}
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getOname() {
		return oname;
	}
	public void setOname(String oname) {
		this.oname = oname;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public BookOrder(Date date, String oname, String address, String status, int uid) {
		super();
		this.date = date;
		this.oname = oname;
		this.address = address;
		this.status = status;
		this.uid = uid;
	}

	
	
}
