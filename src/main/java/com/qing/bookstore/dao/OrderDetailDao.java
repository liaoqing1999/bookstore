package com.qing.bookstore.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.qing.bookstore.entity.OrderDetail;

@Repository
public interface OrderDetailDao {
	 public void insert(OrderDetail orderDetail);

     public void delete(int id);

     public void update(OrderDetail orderDetail);

     public OrderDetail findById(int id);

     public List<OrderDetail> findAll();
}
