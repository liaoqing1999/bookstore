package com.qing.bookstore.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qing.bookstore.dao.CommentDao;
import com.qing.bookstore.entity.Comment;

@Service
public class CommentService {
	@Autowired
	CommentDao commentDao;
	
	public List<Comment> listComment(int bid){
		 List<Comment> comments = commentDao.findAll();
		 List<Comment> result = new ArrayList<Comment>();
		 for(Comment comment:comments){
			 if(comment.getBid()==bid){			 
				 result.add(comment);
			 }
		 }
		
		return result;
	}
}
