package xrdsw.library.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;

import xrdsw.library.domain.UserGrade;
import xrdsw.library.util.DaoUtils;

public class UserGradeDao {
	public List<UserGrade> sall () throws SQLException {
		String sql = "select * from grade";
		QueryRunner runner = new QueryRunner(DaoUtils.getSource());
		List<UserGrade> list = runner.query(sql, new ResultSetHandler<List<UserGrade>>() {
			public List<UserGrade> handle(ResultSet rs) throws SQLException {
				List<UserGrade> list = new ArrayList<UserGrade>();
				while (rs.next()) {
					UserGrade its = new UserGrade();
					its.setId(rs.getInt("id"));
					its.setUsergrade(rs.getString(2));
					list.add(its);
				}
				return list;
			}
		});
		return list;
	}
}
