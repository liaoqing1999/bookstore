package com.qing.bookstore.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.qing.bookstore.entity.BookOrder;

@Repository
public interface BookOrderDao {
	 public void insert(BookOrder bookOrder);

     public void delete(int oid);

     public void update(BookOrder bookOrder);

     public BookOrder findById(int oid);

     public List<BookOrder> findAll();
}
