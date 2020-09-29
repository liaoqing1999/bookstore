package bookstore;

import java.util.List;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.qing.bookstore.dao.BookDao;
import com.qing.bookstore.dao.CommentDao;
import com.qing.bookstore.dao.OrderDetailDao;
import com.qing.bookstore.entity.Book;
import com.qing.bookstore.entity.Comment;
import com.qing.bookstore.entity.OrderDetail;




@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class OrderDetailTest {

	@Autowired
	private OrderDetailDao orderDetailDao;
	
	@Test
	public void testAdd() {
		OrderDetail orderDetail = new OrderDetail();
		orderDetail.setStatus("test");
		orderDetailDao.insert(orderDetail);
	}
	@Test
	public void testList() {
		 List<OrderDetail> orderDetails = orderDetailDao.findAll();
		for (OrderDetail orderDetail: orderDetails) {
			System.out.println(orderDetail);
		}
	}

}
