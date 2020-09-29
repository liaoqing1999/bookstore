package bookstore;

import java.util.List;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.qing.bookstore.dao.BookDao;
import com.qing.bookstore.dao.BookOrderDao;
import com.qing.bookstore.entity.Book;
import com.qing.bookstore.entity.BookOrder;




@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class BookOrderTest {

	@Autowired
	private BookOrderDao bookOrderDao;
	
	@Test
	public void testAdd() {
		BookOrder bookOrder = new BookOrder();
		bookOrder.setOname("test");
		bookOrderDao.insert(bookOrder);
	}
	@Test
	public void testList() {
		 List<BookOrder> bookOrders = bookOrderDao.findAll();
		for (BookOrder bookOrder : bookOrders) {
			System.out.println(bookOrder);
		}
	}

}
