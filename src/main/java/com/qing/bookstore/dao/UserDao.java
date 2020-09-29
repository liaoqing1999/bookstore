package com.qing.bookstore.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.qing.bookstore.entity.User;

@Repository
public interface UserDao {
	 public void insert(User user);

     public void delete(int uid);

     public void update(User user);

     public User findById(int uid);

     public List<User> findAll();
}
