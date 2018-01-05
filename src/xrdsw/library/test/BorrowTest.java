package xrdsw.library.test;

import java.sql.SQLException;
import java.util.List;

import org.junit.Test;

import xrdsw.library.dao.BorrowDao;
import xrdsw.library.domain.Borrow;

public class BorrowTest {
	
//	@Test
//	public void sall() throws SQLException {
//		List<Borrow> list = new BorrowDao().sall();
//		for (int i = 0; i < list.size(); i++) {
//			System.out.print(list.get(i).toString());
//		}
//	}
	
	@Test 
	public void sall() throws SQLException {
		List<Borrow> list = new BorrowDao().sByN("user");
		for (int i = 0; i < list.size(); i++) {
			System.out.print(list.get(i).toString());
		}
	}
}
