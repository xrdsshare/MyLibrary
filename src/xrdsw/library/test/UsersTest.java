package xrdsw.library.test;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;
import org.junit.Test;

import xrdsw.library.dao.UserTypeDao;
import xrdsw.library.dao.UsersDao;
import xrdsw.library.domain.UserType;
import xrdsw.library.domain.Users;
import xrdsw.library.util.DaoUtils;

public class UsersTest {
//	@Test
//	public void susers() throws SQLException {
//		String sql = "select u.id,u.name,u.pwd,u.sex,c.cardtype,u.cardcode,g.grade,co.college,a.academe,s.specialty,u.email,u.tel,t.usertype from users u join cardtype c on u.cardtypeid=c.id join grade g on u.gradeid=g.id join college co on u.collegeid=co.id join academe a on u.academeid=a.id join specialty s on u.specialtyid=s.id join usertype t on u.typeid=t.id";
//		QueryRunner runner = new QueryRunner(DaoUtils.getSource());
//		List<Users> list = runner.query(sql, new ResultSetHandler<List<Users>>() {
//			public List<Users> handle(ResultSet rs) throws SQLException {
//				List<Users> list = new ArrayList<Users>();
//				while (rs.next()) {
//					Users users = new Users();
//					users.setId(rs.getInt("id"));
//					users.setName(rs.getString("name"));
//					users.setPwd(rs.getString("pwd"));
//					users.setSex(rs.getString("sex"));
//					users.setCardtype(rs.getString("cardtype"));
//					users.setCardcode(rs.getString("cardcode"));
//					users.setGrade(rs.getString("grade"));
//					users.setCollege(rs.getString("college"));
//					users.setAcademe(rs.getString("academe"));
//					users.setSpecialty(rs.getString("specialty"));
//					users.setEmail(rs.getString("email"));
//					users.setTel(rs.getString("tel"));
//					users.setUsertype(rs.getString("usertype"));
//					list.add(users);
//				}
//				return list;
//			}
//		});
//		for (int i = 0; i < list.size(); i++) {
//			System.out.print(list.get(i).toString());
//		}
//	}
	
//	@Test
//	public void suserall() throws SQLException {
//		UsersDao userall = new UsersDao();
//		List<Users> list = userall.suser();
//		for (int i = 0; i < list.size(); i++) {
//			System.out.print(list.get(i).toString());
//		}
//	}
	@Test  
	public void srall() throws SQLException {
		UsersDao userall = new UsersDao();
//		List<Users> list = userall.sUserByNP("user1", "user1");
//		for (int i = 0; i < list.size(); i++) {
//			System.out.println(list.get(i).toString());
//		}
		System.out.println(userall.sUserP("user", "user"));
	}
}
