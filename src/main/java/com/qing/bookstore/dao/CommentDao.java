package com.qing.bookstore.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.qing.bookstore.entity.Comment;

@Repository
public interface CommentDao {
	 public void insert(Comment comment);

     public void delete(int cid);

     public void update(Comment comment);

     public Comment findById(int cid);

     public List<Comment> findAll();
}
