package xrdsw.library.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;

import xrdsw.library.domain.UserType;
import xrdsw.library.util.DaoUtils;

public class UserTypeDao {
	public List<UserType> sall () throws SQLException {
		String sql = "select * from usertype";
		QueryRunner runner = new QueryRunner(DaoUtils.getSource());
		List<UserType> list = runner.query(sql, new ResultSetHandler<List<UserType>>() {
			public List<UserType> handle(ResultSet rs) throws SQLException {
				List<UserType> list = new ArrayList<UserType>();
				while (rs.next()) {
					UserType its = new UserType();
					its.setId(rs.getInt("id"));
					its.setUsertype(rs.getString(2));
					its.setUserpower(rs.getString(3));
					its.setDays(rs.getInt(4));
					its.setNumber(rs.getInt(5));
					its.setBackprice(rs.getInt(6));
					list.add(its);
				}
				return list;
			}
		});
		return list;
	}
	
	public List<UserType> sdays (String userpower) throws SQLException {
		String sql = "select * from usertype where userpower=?";
		QueryRunner runner = new QueryRunner(DaoUtils.getSource());
		List<UserType> list = runner.query(sql, new ResultSetHandler<List<UserType>>() {
			public List<UserType> handle(ResultSet rs) throws SQLException {
				List<UserType> list = new ArrayList<UserType>();
				while (rs.next()) {
					UserType its = new UserType();
					its.setId(rs.getInt("id"));
					its.setUsertype(rs.getString(2));
					its.setUserpower(rs.getString(3));
					its.setDays(rs.getInt(4));
					its.setNumber(rs.getInt(5));
					its.setBackprice(rs.getInt(6));
					list.add(its);
				}
				return list;
			}
		},userpower);
		return list;
	}
}
