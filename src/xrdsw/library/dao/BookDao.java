package xrdsw.library.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;

import xrdsw.library.domain.Book;
import xrdsw.library.domain.Borrow;
import xrdsw.library.util.DaoUtils;

public class BookDao {
	/**
	 * 搜索所有图书信息
	 * 
	 * @return
	 * @throws SQLException
	 */
	public List<Book> sBook() throws SQLException {
		String sql = "select b.id,b.bookcode,b.isbn,b.seekcode,b.bookname,b.auther,c.company,b.price,b.keywords,b.amount,bc.bookcase,b.booktime,s.state from bookinfo b join company c on b.compyid=c.id join bookcase bc on b.caseid=bc.id join state s on b.stateid=s.id;";
		QueryRunner runner = new QueryRunner(DaoUtils.getSource());
		List<Book> list = runner.query(sql, new ResultSetHandler<List<Book>>() {
			public List<Book> handle(ResultSet rs) throws SQLException {
				List<Book> list = new ArrayList<Book>();
				while (rs.next()) {
					Book books = new Book();
					books.setId(rs.getInt("id"));
					books.setBookcode(rs.getString("bookcode"));
					books.setIsbn(rs.getString("isbn"));
					books.setSeekcode(rs.getString("seekcode"));
					books.setBookname(rs.getString("bookname"));
					books.setAuther(rs.getString("auther"));
					books.setCompany(rs.getString("company"));
					books.setPrice(rs.getString("price"));
					books.setKeywords(rs.getString("keywords"));
					books.setAmount(rs.getInt("amount"));
					books.setBookcase(rs.getString("bookcase"));
					books.setBooktime(rs.getDate("booktime"));
					books.setState(rs.getString("state"));
					list.add(books);
				}
				return list;
			}
		});
		return list;
	}

	/**
	 * 通过id查找书籍信息
	 * 
	 * @param id
	 * @return
	 * @throws SQLException
	 */
	public Book sBookById(int id) throws SQLException {
		String sql = "select b.id,b.bookcode,b.isbn,b.seekcode,b.bookname,b.auther,c.company,b.price,b.keywords,b.amount,bc.bookcase,b.booktime,s.state from bookinfo b join company c on b.compyid=c.id join bookcase bc on b.caseid=bc.id join state s on b.stateid=s.id where b.id=?;";
		QueryRunner runner = new QueryRunner(DaoUtils.getSource());
		List<Book> list = runner.query(sql, new ResultSetHandler<List<Book>>() {
			public List<Book> handle(ResultSet rs) throws SQLException {
				List<Book> list = new ArrayList<Book>();
				while (rs.next()) {
					Book books = new Book();
					books.setId(rs.getInt("id"));
					books.setBookcode(rs.getString("bookcode"));
					books.setIsbn(rs.getString("isbn"));
					books.setSeekcode(rs.getString("seekcode"));
					books.setBookname(rs.getString("bookname"));
					books.setAuther(rs.getString("auther"));
					books.setCompany(rs.getString("company"));
					books.setPrice(rs.getString("price"));
					books.setKeywords(rs.getString("keywords"));
					books.setAmount(rs.getInt("amount"));
					books.setBookcase(rs.getString("bookcase"));
					books.setBooktime(rs.getDate("booktime"));
					books.setState(rs.getString("state"));
					list.add(books);
				}
				return list;
			}
		}, id);
		return list.get(0);
	}

	/**
	 * 查找新书借阅情况
	 * 
	 * @param name
	 * @return
	 * @throws SQLException
	 */
	public List<Book> sNBByN() throws SQLException {
		String sql = "select b.id,b.bookcode,b.isbn,b.seekcode,b.bookname,b.auther,c.company,b.price,b.keywords,b.amount,bc.bookcase,b.booktime,s.state from bookinfo b join company c on b.compyid=c.id join bookcase bc on b.caseid=bc.id join state s on b.stateid=s.id group by b.isbn order by b.booktime desc limit 10;";
		QueryRunner runner = new QueryRunner(DaoUtils.getSource());
		List<Book> list = runner.query(sql, new ResultSetHandler<List<Book>>() {
			public List<Book> handle(ResultSet rs) throws SQLException {
				List<Book> list = new ArrayList<Book>();
				while (rs.next()) {
					Book books = new Book();
					books.setId(rs.getInt("id"));
					books.setBookcode(rs.getString("bookcode"));
					books.setIsbn(rs.getString("isbn"));
					books.setSeekcode(rs.getString("seekcode"));
					books.setBookname(rs.getString("bookname"));
					books.setAuther(rs.getString("auther"));
					books.setCompany(rs.getString("company"));
					books.setPrice(rs.getString("price"));
					books.setKeywords(rs.getString("keywords"));
					books.setAmount(rs.getInt("amount"));
					books.setBookcase(rs.getString("bookcase"));
					books.setBooktime(rs.getDate("booktime"));
					books.setState(rs.getString("state"));
					list.add(books);
				}
				return list;
			}
		});
		return list;
	}

	/**
	 * 根据书名查找书籍
	 * 
	 * @param name
	 * @return
	 * @throws SQLException
	 */
	public List<Book> sBByBN(String bookname) throws SQLException {
		String sql = "select b.id,b.bookcode,b.isbn,b.seekcode,b.bookname,b.auther,c.company,b.price,b.keywords,b.amount,bc.bookcase,b.booktime,s.state from bookinfo b join company c on b.compyid=c.id join bookcase bc on b.caseid=bc.id join state s on b.stateid=s.id where b.bookname=?;";
		QueryRunner runner = new QueryRunner(DaoUtils.getSource());
		List<Book> list = runner.query(sql, new ResultSetHandler<List<Book>>() {
			public List<Book> handle(ResultSet rs) throws SQLException {
				List<Book> list = new ArrayList<Book>();
				while (rs.next()) {
					Book books = new Book();
					books.setId(rs.getInt("id"));
					books.setBookcode(rs.getString("bookcode"));
					books.setIsbn(rs.getString("isbn"));
					books.setSeekcode(rs.getString("seekcode"));
					books.setBookname(rs.getString("bookname"));
					books.setAuther(rs.getString("auther"));
					books.setCompany(rs.getString("company"));
					books.setPrice(rs.getString("price"));
					books.setKeywords(rs.getString("keywords"));
					books.setAmount(rs.getInt("amount"));
					books.setBookcase(rs.getString("bookcase"));
					books.setBooktime(rs.getDate("booktime"));
					books.setState(rs.getString("state"));
					list.add(books);
				}
				return list;
			}
		},bookname);
		return list;
	}

	/**
	 * 根据图书编码查找书籍
	 * 
	 * @param name
	 * @return
	 * @throws SQLException
	 */
	public List<Book> sBByBC(String bookcode) throws SQLException {
		String sql = "select b.id,b.bookcode,b.isbn,b.seekcode,b.bookname,b.auther,c.company,b.price,b.keywords,b.amount,bc.bookcase,b.booktime,s.state from bookinfo b join company c on b.compyid=c.id join bookcase bc on b.caseid=bc.id join state s on b.stateid=s.id where b.bookcode=?;";
		QueryRunner runner = new QueryRunner(DaoUtils.getSource());
		List<Book> list = runner.query(sql, new ResultSetHandler<List<Book>>() {
			public List<Book> handle(ResultSet rs) throws SQLException {
				List<Book> list = new ArrayList<Book>();
				while (rs.next()) {
					Book books = new Book();
					books.setId(rs.getInt("id"));
					books.setBookcode(rs.getString("bookcode"));
					books.setIsbn(rs.getString("isbn"));
					books.setSeekcode(rs.getString("seekcode"));
					books.setBookname(rs.getString("bookname"));
					books.setAuther(rs.getString("auther"));
					books.setCompany(rs.getString("company"));
					books.setPrice(rs.getString("price"));
					books.setKeywords(rs.getString("keywords"));
					books.setAmount(rs.getInt("amount"));
					books.setBookcase(rs.getString("bookcase"));
					books.setBooktime(rs.getDate("booktime"));
					books.setState(rs.getString("state"));
					list.add(books);
				}
				return list;
			}
		},bookcode);
		return list;
	}

	/**
	 * 根据关键字查找书籍
	 * 
	 * @param name
	 * @return
	 * @throws SQLException
	 */
	public List<Book> sBByKW(String keywords) throws SQLException {
		String sql = "select b.id,b.bookcode,b.isbn,b.seekcode,b.bookname,b.auther,c.company,b.price,b.keywords,b.amount,bc.bookcase,b.booktime,s.state from bookinfo b join company c on b.compyid=c.id join bookcase bc on b.caseid=bc.id join state s on b.stateid=s.id where b.bookname like '%"+keywords+"%';";
		QueryRunner runner = new QueryRunner(DaoUtils.getSource());
		List<Book> list = runner.query(sql, new ResultSetHandler<List<Book>>() {
			public List<Book> handle(ResultSet rs) throws SQLException {
				List<Book> list = new ArrayList<Book>();
				while (rs.next()) {
					Book books = new Book();
					books.setId(rs.getInt("id"));
					books.setBookcode(rs.getString("bookcode"));
					books.setIsbn(rs.getString("isbn"));
					books.setSeekcode(rs.getString("seekcode"));
					books.setBookname(rs.getString("bookname"));
					books.setAuther(rs.getString("auther"));
					books.setCompany(rs.getString("company"));
					books.setPrice(rs.getString("price"));
					books.setKeywords(rs.getString("keywords"));
					books.setAmount(rs.getInt("amount"));
					books.setBookcase(rs.getString("bookcase"));
					books.setBooktime(rs.getDate("booktime"));
					books.setState(rs.getString("state"));
					list.add(books);
				}
				return list;
			}
		});
		return list;
	}
}
