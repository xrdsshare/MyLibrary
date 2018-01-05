package xrdsw.library.test;

import java.sql.SQLException;
import java.util.List;

import org.junit.Test;

import xrdsw.library.dao.BookLoseDao;
import xrdsw.library.domain.BookLose;

public class BookLoseTest {
	BookLoseDao BookLosedao = new BookLoseDao();
	
	@Test
	public void sall() throws SQLException {
		List<BookLose> list = BookLosedao.sBookLose();
		for (int i = 0; i < list.size(); i++) {
			System.out.print(list.get(i).toString());
		}
	}
}
