package com.qing.bookstore.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.qing.bookstore.entity.BuyCar;

@Repository
public interface BuyCarDao {
	 public void insert(BuyCar buyCar );

     public void delete(int id);

     public void update(BuyCar buyCar);

     public BuyCar findById(int id);

     public List<BuyCar> findAll();
}
