package com.qing.bookstore.controller;


import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.qing.bookstore.entity.Book;
import com.qing.bookstore.service.BookService;

@org.springframework.stereotype.Controller
@RequestMapping("/")
public class Controller {
	@Autowired
	BookService bookService;
	
	@RequestMapping("/")
	public String index(HttpSession session,Model model){
		int tsum=bookService.count(0);
		int msum=bookService.count(1);
		int sum=bookService.count(-1);
		session.setAttribute("tsum", tsum);
		session.setAttribute("msum", msum);
		session.setAttribute("sum", sum);
		int i;
		Random random = new Random();
		i=random.nextInt(5)+1;
		List<Book> indexBookList = new ArrayList<Book>();	
		System.out.println(i);
		indexBookList =(ArrayList<Book>)bookService.queryBooksByArray(i, 7, "bid","","");
		for(Book book :indexBookList){
			System.out.println(book);
		}
		session.setAttribute("indexBookList", indexBookList);
		return "index";
	}
	@RequestMapping("/register")
	public String register(){
		return "register";
	}
}
