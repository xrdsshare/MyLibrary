package xrdsw.library.test;

import java.sql.SQLException;
import java.util.List;

import org.junit.Test;

import xrdsw.library.dao.CompanyDao;
import xrdsw.library.domain.Company;

public class CompanyTest {
	CompanyDao companydao = new CompanyDao();
	
	@Test
	public void sall() throws SQLException {
		List<Company> list = companydao.sCompany();
		for (int i = 0; i < list.size(); i++) {
			System.out.print(list.get(i).toString());
		}
	}

}
