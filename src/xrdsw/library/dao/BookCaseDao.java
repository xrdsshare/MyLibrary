package xrdsw.library.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;

import xrdsw.library.domain.BookCase;
import xrdsw.library.util.DaoUtils;

public class BookCaseDao {
	/**
	 * 查询所有图书类型
	 * @param name
	 * @param pwd
	 * @return
	 * @throws SQLException
	 */
	public List<BookCase> sBookCase () throws SQLException {
		String sql = "select * from bookcase";
		QueryRunner runner = new QueryRunner(DaoUtils.getSource());
		List<BookCase> list = runner.query(sql, new ResultSetHandler<List<BookCase>>() {
			public List<BookCase> handle(ResultSet rs) throws SQLException {
				List<BookCase> list = new ArrayList<BookCase>();
				while (rs.next()) {
					BookCase bookcases = new BookCase();
					bookcases.setId(rs.getInt("id"));
					bookcases.setBookcase(rs.getString("bookcase"));
					list.add(bookcases);
				}
				return list;
			}
		});
		return list;
	}
}
