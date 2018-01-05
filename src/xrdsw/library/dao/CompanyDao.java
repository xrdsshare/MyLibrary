package xrdsw.library.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;

import xrdsw.library.domain.Company;
import xrdsw.library.util.DaoUtils;

public class CompanyDao {
	/**
	 * 查询所有出版社
	 * @return
	 * @throws SQLException
	 */
	public List<Company> sCompany () throws SQLException {
		String sql = "select * from company";
		QueryRunner runner = new QueryRunner(DaoUtils.getSource());
		List<Company> list = runner.query(sql, new ResultSetHandler<List<Company>>() {
			public List<Company> handle(ResultSet rs) throws SQLException {
				List<Company> list = new ArrayList<Company>();
				while (rs.next()) {
					Company companys = new Company();
					companys.setId(rs.getInt("id"));
					companys.setCompany(rs.getString("company"));
					list.add(companys);
				}
				return list;
			}
		});
		return list;
	}
}
