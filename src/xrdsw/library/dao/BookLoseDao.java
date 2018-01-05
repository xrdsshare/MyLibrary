package xrdsw.library.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;

import xrdsw.library.domain.BookLose;
import xrdsw.library.util.DaoUtils;

public class BookLoseDao {
	/**
	 * 查询所有丢书记录
	 * @return
	 * @throws SQLException
	 */
	public List<BookLose> sBookLose () throws SQLException {
		String sql = "select * from loselog";
		QueryRunner runner = new QueryRunner(DaoUtils.getSource());
		List<BookLose> list = runner.query(sql, new ResultSetHandler<List<BookLose>>() {
			public List<BookLose> handle(ResultSet rs) throws SQLException {
				List<BookLose> list = new ArrayList<BookLose>();
				while (rs.next()) {
					BookLose BookLoses = new BookLose();
					BookLoses.setId(rs.getInt("id"));
					BookLoses.setLogtime(rs.getDate("logtime"));
					BookLoses.setMngname(rs.getString("mngname"));
					BookLoses.setIsbn(rs.getString("isbn"));
					BookLoses.setBookname(rs.getString("bookname"));
					BookLoses.setBookauther(rs.getString("bookauther"));
					BookLoses.setBookcom(rs.getString("bookcom"));
					BookLoses.setUsername(rs.getString("username"));
					BookLoses.setUsercardcode(rs.getString("usercardcode"));
					list.add(BookLoses);
				}
				return list;
			}
		});
		return list;
	}
}
