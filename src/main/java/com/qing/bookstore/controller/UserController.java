package com.qing.bookstore.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.channels.SeekableByteChannel;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.qing.bookstore.entity.Book;
import com.qing.bookstore.entity.BuyCar;
import com.qing.bookstore.entity.User;
import com.qing.bookstore.service.BookService;
import com.qing.bookstore.service.BuyCarService;
import com.qing.bookstore.service.UserService;

@Controller

@RequestMapping("user")
public class UserController {
	@Autowired
	UserService userService;
	@Autowired
	private BuyCarService buyCarService;
	@Autowired
	private BookService bookService;
	@PostMapping("/login")
	public String login(@RequestParam String userName,String password,Model model,HttpSession session){
		User u = new User(userName,password);
		if(userService.userLogin(u).getUid()!=0){
			User user=userService.userLogin(u);
			session.setAttribute("user", user);
			List<BuyCar> userCar = buyCarService.userCar(user.getUid());
			int count=0;
			for(BuyCar buyCar:userCar){		
				count+=buyCar.getNum();
			}
			session.setAttribute("count",count);
			return "index";
		}else{
			model.addAttribute("msg", "用户名或密码错误");
			return "index";
		}
	}
	@PostMapping("/register")
	public String register(@RequestParam("username") String userName,@RequestParam("password")String password,String email,String gender,String phone,String address,Model model,HttpSession session) throws IOException{
		
		String  nuserName = new String(userName.getBytes("ISO8859_1"),"UTF-8");
		String  npassword = new String(password.getBytes("ISO8859_1"), "UTF-8");
		String  nemail = new String(email.getBytes("ISO8859_1"), "UTF-8");
		String  naddress = new String(address.getBytes("ISO8859_1"), "UTF-8");
		String  ngender = new String(gender.getBytes("ISO8859_1"), "UTF-8");
		String  nphone = new String( phone.getBytes("ISO8859_1"), "UTF-8");
		User u = new User(nuserName,npassword);
		u.setAddress(naddress);
		u.setEmail(nemail);
		u.setPhone(nphone);
		u.setGender(ngender);
		
		String msg ;
		if(userService.userReg(u)){
				msg="注册成功";
				model.addAttribute("msg", msg);
				return "index";	
		}else{
			msg="注册失败！用户名重复";
			model.addAttribute("msg", msg);
			return "register";
		}
	}
	@RequestMapping("/loginout")
	public String logout(HttpSession session){
		session.removeAttribute("count");
		session.removeAttribute("user");
		session.removeAttribute("userCar");
		session.removeAttribute("books");
		return "index";
	}
}
