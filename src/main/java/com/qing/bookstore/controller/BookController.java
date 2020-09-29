package com.qing.bookstore.controller;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.qing.bookstore.entity.Book;
import com.qing.bookstore.entity.Comment;
import com.qing.bookstore.service.BookService;
import com.qing.bookstore.service.CommentService;
@Controller
@RequestMapping("/book")
public class BookController {
	@Autowired
	BookService bookService;
	@Autowired
	CommentService commentService;
	@RequestMapping("/bookView")
	public String bookView(@RequestParam("bName") String bName,Model model,HttpSession session){
		Book book=bookService.findByName(bName);
		
		if(commentService.listComment(book.getBid())!=null){
			List<Comment> listComment =commentService.listComment(book.getBid());
			
			model.addAttribute("listComment", listComment);
		}
		
		model.addAttribute("book", book);
		return "detail";
	}
	@RequestMapping("/bookList")
	public String bookList(@RequestParam("currPage") int currPage,
			@RequestParam("pageSize") int pageSize,
			@RequestParam("sort") String sort,
			@RequestParam("cond") String cond,
			@RequestParam("state") String state,
			Model model,HttpSession session){
		List<Book> booklist = new ArrayList<Book>();
		if(pageSize<=0){
			currPage=1;
			pageSize=bookService.count(-1);			
		}
		booklist =(ArrayList<Book>) bookService.queryBooksByArray(currPage, pageSize,sort,cond,state);
		for(Book book :booklist){
			System.out.println(book);
		}
		model.addAttribute("booklist", booklist);
		model.addAttribute("currPage",currPage);
		model.addAttribute("pageSize",pageSize);
		model.addAttribute("cond",cond);
		model.addAttribute("state",state);
		
		model.addAttribute("sum",bookService.searchAll(cond,state).size());
		model.addAttribute("sort", sort);	
		return "category";
	}
	@RequestMapping("/type")
	public String searchAll(@RequestParam("type") String cond,Model model,HttpSession session){
		List<Book> searchAll = bookService.searchAll(cond,"");
		for(Book book:searchAll){
			System.out.println(book);
		}
		model.addAttribute("booklist", searchAll);
		model.addAttribute("currPage",1);
		model.addAttribute("pageSize",6);
		model.addAttribute("sort", "bid");	
		System.out.println();
		return "category";
	}
	
}
