package com.qing.bookstore.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qing.bookstore.dao.UserDao;
import com.qing.bookstore.entity.User;


@Service
public class UserService {
	@Autowired
	UserDao userDao ;
	public boolean userReg(User user) {
		List<User> userList = userDao.findAll();
		for(User u:userList){
			if(user.getUname().equals(u.getUname())) return false;
		}
		userDao.insert(user);
		return true;
	}
	
	public User userLogin(User user) {
		List<User> userList = userDao.findAll();
		for(User u:userList){
			if(u.getUname().equals(user.getUname())){
				if(u.getPassword().equals(user.getPassword())){
					return u;
				}
			}
		}
		return user;
	}
	
	public List<User> findAllUser() {
		List<User> userList = userDao.findAll();
		return userList;
	}
	
	
	public User findUserById(Integer uid) {
		return userDao.findById(uid);
	}
	
	public void deleteById(Integer uid) {
		userDao.delete(uid);;
	}
	
	public void addUser(User user) {
		userDao.insert(user);
	}
	
	public void  update(User user) {
		userDao.update(user);
	}
}
