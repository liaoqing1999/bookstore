package com.qing.bookstore.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qing.bookstore.dao.BookDao;
import com.qing.bookstore.entity.Book;

@Service
public class BookService {
	@Autowired
	BookDao bookDao;
	
	public void addBook(Book book){
		bookDao.insert(book);
	}
	
	public List<Book> bookList(){
		return bookDao.findAll();
	}
	
	public Book findById(int bookId){
		return bookDao.findById(bookId);
	}
	
	public Book findByName(String bname){
		List<Book> books = bookList();
		for(Book book:books){
			if(book.getBname().equals(bname)){
				return book;
			}
		}
		return null;
	}
	public int count(int state){
		List<Book> bookList = bookList();
		int tsum=0;
		int msum=0;
		for(Book book:bookList){
			if(book.getState().equals("0")){
				tsum++;
			}else{
				msum++;
			}
		}
		if(state==0){
			return tsum;
		}else if(state==1){
			return msum;
		}else{
			return tsum+msum;
		}
	}
	public List<Book> queryBooksByArray(int currPage, int pageSize,String sort,String cond,String state){
		 int firstIndex = (currPage - 1) * pageSize;
		 
	     return bookDao.queryStudentsBySql(firstIndex, pageSize,sort,cond,state);
	}
	
	public List<Book> searchAll(String cond,String state){
		List<Book> booklist = bookDao.searchAll(cond);
		List<Book> list = new ArrayList<Book>();
		for(Book book:booklist){
			if(book.getState().contains(state)){
				list.add(book);
			}
		}
		return list;
	}
}
