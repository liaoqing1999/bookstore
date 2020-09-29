package com.qing.bookstore.controller;

import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.qing.bookstore.entity.Book;
import com.qing.bookstore.entity.BuyCar;
import com.qing.bookstore.service.BookService;
import com.qing.bookstore.service.BuyCarService;

@Controller
@RequestMapping("/buyCar")
public class BuyCarController {
	@Autowired
	private BuyCarService buyCarService;
	@Autowired
	private BookService bookService;
	@RequestMapping("/userCar")
	public String userCar(@RequestParam("uid") int uid,Model model,HttpSession session){
		List<BuyCar> userCar = buyCarService.userCar(uid);
		List<Book> books = new ArrayList<Book>();
		int count=0;
		for(BuyCar buyCar:userCar){
			Book book = bookService.findById(buyCar.getBid());
			books.add(book);
			count+=buyCar.getNum();
		}
		session.setAttribute("userCar",userCar);
		session.setAttribute("books",books);
		session.setAttribute("count",count);
		return "basket";
	}
	@RequestMapping("/add")
	public String add(@RequestParam("uid") int uid,@RequestParam("bid") int bid,Model model,HttpSession session){
		buyCarService.add(uid, bid);
		userCar(uid, model, session);
		return "basket";
	}
	
	@RequestMapping("/delete")
	public String deleteCar(@RequestParam("id") int id,@RequestParam("uid") int uid,Model model,HttpSession session){
		buyCarService.delete(id);
		userCar(uid, model, session);
		return "basket";
	}
	@RequestMapping("/updateCar")
	public String updateCar(@RequestParam("uid") int uid,String[] list,Model model,HttpSession session){
		List<BuyCar> userCar = buyCarService.userCar(uid);
		for(int i=0;i<list.length;i=i+2){
			int bid=Integer.parseInt(list[i].replaceAll("\\D", ""));
			int num=Integer.parseInt(list[i+1].replaceAll("\\D", ""));
			for(BuyCar buyCar:userCar){
				if(buyCar.getBid()==bid){
					buyCar.setNum(num);
					buyCarService.update(buyCar);
				}
			}
		}
		
		
		userCar(uid, model, session);
		return "basket";
	}

}
