package xrdsw.library.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;

import xrdsw.library.domain.Borrow;
import xrdsw.library.util.DaoUtils;

public class BorrowDao {
	public List<Borrow> sall () throws SQLException {
		String sql = "select *,count(bookid) as borrowsum from borrow group by bookid order by borrowsum desc;";
		QueryRunner runner = new QueryRunner(DaoUtils.getSource());
		List<Borrow> list = runner.query(sql, new ResultSetHandler<List<Borrow>>() {
			public List<Borrow> handle(ResultSet rs) throws SQLException {
				List<Borrow> list = new ArrayList<Borrow>();
				while (rs.next()) {
					Borrow its = new Borrow();
					its.setId(rs.getInt("id"));
					its.setUserid(rs.getInt("userid"));
					its.setBookid(rs.getInt("bookid"));
					its.setBorrowtime(rs.getDate("borrowtime"));
					its.setPlantime(rs.getDate("plantime"));
					its.setBacktime(rs.getDate("backtime"));
					its.setBorrowsum(rs.getInt("borrowsum"));
					list.add(its);
				}
				return list;
			}
		});
		return list;
	}
	/**
	 * 根据用户名查找历史借阅情况
	 * @param name
	 * @return
	 * @throws SQLException
	 */
	public List<Borrow> sHByN (String name) throws SQLException {
		String sql = "select b.*,u.name from borrow b join users u on u.id=b.userid where u.name=?;";
		QueryRunner runner = new QueryRunner(DaoUtils.getSource());
		List<Borrow> list = runner.query(sql, new ResultSetHandler<List<Borrow>>() {
			public List<Borrow> handle(ResultSet rs) throws SQLException {
				List<Borrow> list = new ArrayList<Borrow>();
				while (rs.next()) {
					Borrow its = new Borrow();
					its.setId(rs.getInt("id"));
					its.setUserid(rs.getInt("userid"));
					its.setBookid(rs.getInt("bookid"));
					its.setBorrowtime(rs.getDate("borrowtime"));
					its.setPlantime(rs.getDate("plantime"));
					its.setBacktime(rs.getDate("backtime"));
					list.add(its);
				}
				return list;
			}
		},name);
		return list;
	}
	/**
	 * 根据用户名查找借阅情况
	 * @param name
	 * @return
	 * @throws SQLException
	 */
	public List<Borrow> sByN (String name) throws SQLException {
		String sql = "select b.*,u.name from borrow b join users u on u.id=b.userid where backtime is not null and u.name=?;";
		QueryRunner runner = new QueryRunner(DaoUtils.getSource());
		List<Borrow> list = runner.query(sql, new ResultSetHandler<List<Borrow>>() {
			public List<Borrow> handle(ResultSet rs) throws SQLException {
				List<Borrow> list = new ArrayList<Borrow>();
				while (rs.next()) {
					Borrow its = new Borrow();
					its.setId(rs.getInt("id"));
					its.setUserid(rs.getInt("userid"));
					its.setBookid(rs.getInt("bookid"));
					its.setBorrowtime(rs.getDate("borrowtime"));
					its.setPlantime(rs.getDate("plantime"));
					its.setBacktime(rs.getDate("backtime"));
					list.add(its);
				}
				return list;
			}
		},name);
		return list;
	}
	/**
	 * 更新日期
	 * @param id
	 * @throws SQLException
	 */
	public void uDTime(int id) throws SQLException {
		String sql = "update borrow set plantime=date_add(plantime, interval 1 month) where id=?";
		QueryRunner runner = new QueryRunner(DaoUtils.getSource());
		runner.update(sql, id);
	}
}
