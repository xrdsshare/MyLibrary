package xrdsw.library.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;

import xrdsw.library.domain.UserCollege;
import xrdsw.library.util.DaoUtils;

public class UserCollegeDao {
	public List<UserCollege> sall () throws SQLException {
		String sql = "select * from college";
		QueryRunner runner = new QueryRunner(DaoUtils.getSource());
		List<UserCollege> list = runner.query(sql, new ResultSetHandler<List<UserCollege>>() {
			public List<UserCollege> handle(ResultSet rs) throws SQLException {
				List<UserCollege> list = new ArrayList<UserCollege>();
				while (rs.next()) {
					UserCollege its = new UserCollege();
					its.setId(rs.getInt("id"));
					its.setUsercollege(rs.getString(2));
					list.add(its);
				}
				return list;
			}
		});
		return list;
	}
}
