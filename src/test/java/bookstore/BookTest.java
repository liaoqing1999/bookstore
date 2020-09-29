package bookstore;

import java.util.Collection;
import java.util.Enumeration;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionContext;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.ui.Model;

import com.qing.bookstore.controller.BookController;
import com.qing.bookstore.dao.BookDao;

import com.qing.bookstore.entity.Book;




@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class BookTest {

	@Autowired
	private BookDao bookDao;
	@Autowired
	private BookController bookController;
	
	@Test
	public void testList() {
		 List<Book> books = bookDao.findAll();
		for (Book book : books) {
			System.out.println(book);
		}
	}
	@Test
	public void test(){
		bookController.bookList(1, 10, "convert(bname using gbk)","","", null, null); 
			
	
	}
}
