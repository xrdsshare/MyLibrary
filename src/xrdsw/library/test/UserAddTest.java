package xrdsw.library.test;

import java.sql.SQLException;
import java.util.List;

import org.junit.Test;

import xrdsw.library.dao.UserAcademeDao;
import xrdsw.library.domain.UserAcademe;

public class UserAddTest {
	
	@Test
	public void sall() throws SQLException {
		UserAcademeDao test = new UserAcademeDao();
		List<UserAcademe> list = test.sall();
		for (int i = 0; i < list.size(); i++) {
			System.out.print(list.get(i).toString());
		}
	}
}
