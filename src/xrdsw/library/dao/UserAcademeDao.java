package xrdsw.library.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;

import xrdsw.library.domain.UserAcademe;
import xrdsw.library.util.DaoUtils;

public class UserAcademeDao {
	public List<UserAcademe> sall () throws SQLException {
		String sql = "select * from academe";
		QueryRunner runner = new QueryRunner(DaoUtils.getSource());
		List<UserAcademe> list = runner.query(sql, new ResultSetHandler<List<UserAcademe>>() {
			public List<UserAcademe> handle(ResultSet rs) throws SQLException {
				List<UserAcademe> list = new ArrayList<UserAcademe>();
				while (rs.next()) {
					UserAcademe its = new UserAcademe();
					its.setId(rs.getInt("id"));
					its.setUseracademe(rs.getString(2));
					list.add(its);
				}
				return list;
			}
		});
		return list;
	}
}
