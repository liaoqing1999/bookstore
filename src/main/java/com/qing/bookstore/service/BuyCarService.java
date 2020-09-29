package com.qing.bookstore.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qing.bookstore.dao.BuyCarDao;
import com.qing.bookstore.entity.BuyCar;

@Service
public class BuyCarService {
	@Autowired
	private BuyCarDao buyCarDao;
	
	public List<BuyCar> userCar(int uid){
		List<BuyCar> buyCars = buyCarDao.findAll();
		List<BuyCar> result =new ArrayList<BuyCar>();
		for(BuyCar car:buyCars){
			if(car.getUid()==uid){
				result.add(car);
			}
		}
		return result;
	}
	
	public void delete(int id){
		buyCarDao.delete(id);
	}
	public void update(BuyCar buyCar){
		buyCarDao.update(buyCar);
	}
	public void add(int uid,int bid){
		BuyCar buyCar = new BuyCar(uid, bid,1);
		List<BuyCar> userCar = userCar(uid);
		for(BuyCar car:userCar){
			if(car.getBid()==bid){
				buyCar.setId(car.getId());
				buyCar.setNum(car.getNum()+1);
				
				buyCarDao.update(buyCar);
				return;
			}
		}
		buyCarDao.insert(buyCar);
	}
}
