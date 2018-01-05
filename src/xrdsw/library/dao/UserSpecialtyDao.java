package xrdsw.library.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;

import xrdsw.library.domain.UserSpecialty;
import xrdsw.library.util.DaoUtils;

public class UserSpecialtyDao {
	public List<UserSpecialty> sall () throws SQLException {
		String sql = "select * from specialty";
		QueryRunner runner = new QueryRunner(DaoUtils.getSource());
		List<UserSpecialty> list = runner.query(sql, new ResultSetHandler<List<UserSpecialty>>() {
			public List<UserSpecialty> handle(ResultSet rs) throws SQLException {
				List<UserSpecialty> list = new ArrayList<UserSpecialty>();
				while (rs.next()) {
					UserSpecialty its = new UserSpecialty();
					its.setId(rs.getInt("id"));
					its.setUserspecialty(rs.getString(2));
					list.add(its);
				}
				return list;
			}
		});
		return list;
	}
}
