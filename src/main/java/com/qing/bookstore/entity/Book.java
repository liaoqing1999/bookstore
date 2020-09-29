package com.qing.bookstore.entity;

import java.io.Serializable;
import java.util.Date;


public class Book implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1753031056798162229L;
	private int bid;
	private String bname;
	private String detail;
	private double price;
	private String writer;
	private String printer;
	private Date date;
	private String type;
	private String image;
	private int store;
	private String state;
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public int getStore() {
		return store;
	}
	public void setStore(int store) {
		this.store = store;
	}
	
	public Book() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getPrinter() {
		return printer;
	}
	public void setPrinter(String printer) {
		this.printer = printer;
	}
	public Book(String bname, String detail, double price, String writer, String printer, Date date, String type,
			String image, int store, String state) {
		super();
		this.bname = bname;
		this.detail = detail;
		this.price = price;
		this.writer = writer;
		this.printer = printer;
		this.date = date;
		this.type = type;
		this.image = image;
		this.store = store;
		this.state = state;
	}
	@Override
	public String toString() {
		return "Book [bid=" + bid + ", bname=" + bname + ", detail=" + detail + ", price=" + price + ", writer="
				+ writer + ", printer=" + printer + ", date=" + date + ", type=" + type + ", image=" + image
				+ ", store=" + store + ", state=" + state + "]";
	}
	
	
}
