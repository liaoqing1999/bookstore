package bookstore;

import java.util.List;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.qing.bookstore.dao.BookDao;
import com.qing.bookstore.dao.BookOrderDao;
import com.qing.bookstore.dao.UserDao;
import com.qing.bookstore.entity.Book;
import com.qing.bookstore.entity.BookOrder;
import com.qing.bookstore.entity.User;




@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class UserTest {

	@Autowired
	private UserDao userDao;
	
	@Test
	public void testAdd() {
		User user = new User("test","test");
		userDao.insert(user);;
	}
	@Test
	public void testList() {
		 List<User> users = userDao.findAll();
		for (User user : users) {
			System.out.println(user);
		}
	}

}
