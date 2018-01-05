package xrdsw.library.test;

import java.sql.SQLException;
import java.util.List;

import org.junit.Test;

import xrdsw.library.dao.BookCaseDao;
import xrdsw.library.domain.BookCase;

public class BookCaseTest {
	BookCaseDao bookcasedao = new BookCaseDao();
	
	@Test
	public void sall() throws SQLException {
		List<BookCase> list = bookcasedao.sBookCase();
		for (int i = 0; i < list.size(); i++) {
			System.out.print(list.get(i).toString());
		}
	}

}
