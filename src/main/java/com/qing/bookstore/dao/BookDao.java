package com.qing.bookstore.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.qing.bookstore.entity.Book;
@Repository
public interface BookDao {
	 public void insert(Book book);

     public void delete(int bid);

     public void update(Book book);

     public Book findById(int bid);

     public List<Book> findAll();
     
     public List<Book> queryStudentsBySql(@Param("currIndex")int currIndex,
    		 @Param("pageSize")int pageSize,@Param("sort")String sort,
    		 @Param("cond")String cond,@Param("state")String state);
     
     public List<Book> searchAll(String cond);
}
