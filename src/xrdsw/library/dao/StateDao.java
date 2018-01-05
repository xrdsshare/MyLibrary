package xrdsw.library.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;

import xrdsw.library.domain.State;
import xrdsw.library.util.DaoUtils;

public class StateDao {
	public List<State> sstate () throws SQLException {
		String sql = "select * from state";
		QueryRunner runner = new QueryRunner(DaoUtils.getSource());
		List<State> list = runner.query(sql, new ResultSetHandler<List<State>>() {
			public List<State> handle(ResultSet rs) throws SQLException {
				List<State> list = new ArrayList<State>();
				while (rs.next()) {
					State States = new State();
					States.setId(rs.getInt("id"));
					States.setState(rs.getString("state"));
					list.add(States);
				}
				return list;
			}
		});
		return list;
	}
}
