package bookstore;

import java.util.List;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.qing.bookstore.dao.BookDao;
import com.qing.bookstore.dao.CommentDao;
import com.qing.bookstore.entity.Book;
import com.qing.bookstore.entity.Comment;




@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class CommentTest {

	@Autowired
	private CommentDao commentDao;
	
	@Test
	public void testAdd() {
		Comment comment = new Comment();
		comment.setContent("test");
		commentDao.insert(comment);
	}
	@Test
	public void testList() {
		 List<Comment> comments = commentDao.findAll();
		for (Comment comment : comments) {
			System.out.println(comment);
		}
	}

}
