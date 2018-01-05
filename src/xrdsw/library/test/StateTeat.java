package xrdsw.library.test;

import java.sql.SQLException;
import java.util.List;

import org.junit.Test;

import xrdsw.library.dao.StateDao;
import xrdsw.library.domain.State;

public class StateTeat {
	StateDao statedao = new StateDao();
	
	@Test
	public void sall() throws SQLException {
		List<State> list = statedao.sstate();
		for (int i = 0; i < list.size(); i++) {
			System.out.print(list.get(i).toString());
		}
	}
}
