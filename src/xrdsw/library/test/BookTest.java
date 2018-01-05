package xrdsw.library.test;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;
import org.junit.Test;

import xrdsw.library.dao.BookDao;
import xrdsw.library.domain.Book;
import xrdsw.library.util.DaoUtils;

public class BookTest {
//	@Test
//	public void sbooks() throws SQLException {
//		String sql = "select b.id,b.bookcode,b.isbn,b.seekcode,b.bookname,b.auther,c.company,b.price,b.keywords,b.amount,bc.bookcase,b.booktime,s.state from bookinfo b join company c on b.compyid=c.id join bookcase bc on b.caseid=bc.id join state s on b.stateid=s.id;";
//		QueryRunner runner = new QueryRunner(DaoUtils.getSource());
//		List<Book> list = runner.query(sql, new ResultSetHandler<List<Book>>() {
//			public List<Book> handle(ResultSet rs) throws SQLException {
//				List<Book> list = new ArrayList<Book>();
//				while (rs.next()) {
//					Book books = new Book();
//					books.setId(rs.getInt("id"));
//					books.setBookcode(rs.getString("bookcode"));
//					books.setIsbn(rs.getString("isbn"));
//					books.setSeekcode(rs.getString("seekcode"));
//					books.setBookname(rs.getString("bookname"));
//					books.setAuther(rs.getString("auther"));
//					books.setCompany(rs.getString("company"));
//					books.setPrice(rs.getString("price"));
//					books.setKeywords(rs.getString("keywords"));
//					books.setAmount(rs.getInt("amount"));
//					books.setBookcase(rs.getString("bookcase"));
//					books.setBooktime(rs.getDate("booktime"));
//					books.setState(rs.getString("state"));
//					list.add(books);
//				}
//				return list;
//			}
//		});
//		for (int i = 0; i < list.size(); i++) {
//			System.out.print(list.get(i).toString());
//		}
//	}

//	 @Test
//	 public void ibook() throws SQLException {
//		 int a = 0+2;
//		 int b = 1+2;
//		 int n = 0;
//		 String sql = "insert into bookinfo values (null,?,?,?,?,?,?,?,?,?,?,?,?);";
//		 QueryRunner runner = new QueryRunner(DaoUtils.getSource());
//		 for(int i=0; i<5; i++){
//			 a++;
//			 Random company = new Random();
//			 Random amount = new Random();
//			 Random bookcase = new Random();
//			 Random state = new Random();
//			 n = amount.nextInt(5) % (5 - 1 + 1) + 1;
//			 for(int j=0; j<n; j++){
//				 b++;
//				 runner.update(sql, "0000000"+b, "000-" + a, "AA000.0" + a + "A0" + a, 
//						 "测试图书名" + a, "作者" + a, company.nextInt(10) % (10 - 1 + 1) + 1, 
//						 "020", "测试、图书、" + a, n, bookcase.nextInt(10) % (10 - 1 + 1) + 1,
//						 "2017/12/16", state.nextInt(3) % (3 - 1 + 1) + 1);
//			 }
//		 }
//	 }

	// @Test
	// public void ramtest() {
	// for (int i = 0; i < 20; i++) {
	// int max = 20;
	// int min = 10;
	// Random random = new Random();
	// int s = random.nextInt(max) % (max - min + 1) + min;
	// System.out.println(s);
	// }
	// }
	 
	 @Test
	 public void TSBook() throws SQLException {
		 BookDao bookdao = new BookDao();
		 List<Book> list = bookdao.sBByKW("测试");
		 for (int i = 0; i < list.size(); i++) {
				System.out.print(list.get(i).toString());
			}
	 }
//	 @Test
//	 public void TSBook() throws SQLException {
//		 BookDao bookdao = new BookDao();
//		 for(int i=1;i<20;i++){
//			 Book its = bookdao.sBookById(i);
//			 System.out.print(its.toString());
//		}
//	 }
}
