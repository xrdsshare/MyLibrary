package xrdsw.library.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;

import xrdsw.library.domain.Users;
import xrdsw.library.util.DaoUtils;

public class UsersDao {
	/**
	 * 根据用户名，密码查询用户，确定用户类型
	 * @param name
	 * @param pwd
	 * @return
	 * @throws SQLException
	 */
	public List<Users> sUserByNP(String name, String pwd) throws SQLException {
		String sql = "select u.name,u.pwd,t.userpower from users u join usertype t on u.typeid=t.id where name=? and pwd=?;";
		QueryRunner runner = new QueryRunner(DaoUtils.getSource());
		List<Users> list = runner.query(sql, new ResultSetHandler<List<Users>>() {
			public List<Users> handle(ResultSet rs) throws SQLException {
				List<Users> list = new ArrayList<Users>();
				while (rs.next()) {
					Users users = new Users();
					users.setName(rs.getString("name"));
					users.setPwd(rs.getString("pwd"));
					users.setUserpower(rs.getString("userpower"));
					list.add(users);
				}
				return list;
			}
		},name,pwd);
		return list;
	}
	/**
	 * 根据用户名密码查询所有用户数据
	 * @param name
	 * @param pwd
	 * @return
	 * @throws SQLException
	 */
	public List<Users> sUserAll(String name, String pwd) throws SQLException {
		String sql = "select u.id,u.name,u.pwd,u.sex,c.cardtype,u.cardcode,g.grade,co.college,a.academe,s.specialty,u.email,u.tel,t.usertype from users u join cardtype c on u.cardtypeid=c.id join grade g on u.gradeid=g.id join college co on u.collegeid=co.id join academe a on u.academeid=a.id join specialty s on u.specialtyid=s.id join usertype t on u.typeid=t.id where name=? and pwd=?";
		QueryRunner runner = new QueryRunner(DaoUtils.getSource());
		List<Users> list = runner.query(sql, new ResultSetHandler<List<Users>>() {
			public List<Users> handle(ResultSet rs) throws SQLException {
				List<Users> list = new ArrayList<Users>();
				while (rs.next()) {
					Users users = new Users();
					users.setId(rs.getInt("id"));
					users.setName(rs.getString("name"));
					users.setPwd(rs.getString("pwd"));
					users.setSex(rs.getString("sex"));
					users.setCardtype(rs.getString("cardtype"));
					users.setCardcode(rs.getString("cardcode"));
					users.setGrade(rs.getString("grade"));
					users.setCollege(rs.getString("college"));
					users.setAcademe(rs.getString("academe"));
					users.setSpecialty(rs.getString("specialty"));
					users.setEmail(rs.getString("email"));
					users.setTel(rs.getString("tel"));
					users.setUsertype(rs.getString("usertype"));
					list.add(users);
				}
				return list;
			}
		},name,pwd);
		return list;
	}
	/**
	 * 根据证件号查询用户
	 * @param cardcode
	 * @return
	 * @throws SQLException
	 */
	public List<Users> sUserByC(String cardcode) throws SQLException {
		String sql = "select u.id,u.name,u.pwd,u.sex,c.cardtype,u.cardcode,g.grade,co.college,a.academe,s.specialty,u.email,u.tel,t.usertype from users u join cardtype c on u.cardtypeid=c.id join grade g on u.gradeid=g.id join college co on u.collegeid=co.id join academe a on u.academeid=a.id join specialty s on u.specialtyid=s.id join usertype t on u.typeid=t.id where cardcode=?";
		QueryRunner runner = new QueryRunner(DaoUtils.getSource());
		List<Users> list = runner.query(sql, new ResultSetHandler<List<Users>>() {
			public List<Users> handle(ResultSet rs) throws SQLException {
				List<Users> list = new ArrayList<Users>();
				while (rs.next()) {
					Users users = new Users();
					users.setId(rs.getInt("id"));
					users.setName(rs.getString("name"));
					users.setPwd(rs.getString("pwd"));
					users.setSex(rs.getString("sex"));
					users.setCardtype(rs.getString("cardtype"));
					users.setCardcode(rs.getString("cardcode"));
					users.setGrade(rs.getString("grade"));
					users.setCollege(rs.getString("college"));
					users.setAcademe(rs.getString("academe"));
					users.setSpecialty(rs.getString("specialty"));
					users.setEmail(rs.getString("email"));
					users.setTel(rs.getString("tel"));
					users.setUsertype(rs.getString("usertype"));
					list.add(users);
				}
				return list;
			}
		},cardcode);
		return list;
	}
	/**
	 * 根据用户名查询用户
	 * @param name
	 * @return
	 * @throws SQLException
	 */
	public List<Users> sUserByN(String name) throws SQLException {
		String sql = "select u.id,u.name,u.pwd,u.sex,c.cardtype,u.cardcode,g.grade,co.college,a.academe,s.specialty,u.email,u.tel,t.usertype from users u join cardtype c on u.cardtypeid=c.id join grade g on u.gradeid=g.id join college co on u.collegeid=co.id join academe a on u.academeid=a.id join specialty s on u.specialtyid=s.id join usertype t on u.typeid=t.id where name=?";
		QueryRunner runner = new QueryRunner(DaoUtils.getSource());
		List<Users> list = runner.query(sql, new ResultSetHandler<List<Users>>() {
			public List<Users> handle(ResultSet rs) throws SQLException {
				List<Users> list = new ArrayList<Users>();
				while (rs.next()) {
					Users users = new Users();
					users.setId(rs.getInt("id"));
					users.setName(rs.getString("name"));
					users.setPwd(rs.getString("pwd"));
					users.setSex(rs.getString("sex"));
					users.setCardtype(rs.getString("cardtype"));
					users.setCardcode(rs.getString("cardcode"));
					users.setGrade(rs.getString("grade"));
					users.setCollege(rs.getString("college"));
					users.setAcademe(rs.getString("academe"));
					users.setSpecialty(rs.getString("specialty"));
					users.setEmail(rs.getString("email"));
					users.setTel(rs.getString("tel"));
					users.setUsertype(rs.getString("usertype"));
					list.add(users);
				}
				return list;
			}
		},name);
		return list;
	}
	/**
	 * 查询所有用户信息
	 * @return
	 * @throws SQLException
	 */
	public List<Users> sall() throws SQLException {
		String sql = "select u.id,u.name,u.pwd,u.sex,c.cardtype,u.cardcode,g.grade,co.college,a.academe,s.specialty,u.email,u.tel,t.usertype,t.userpower from users u join cardtype c on u.cardtypeid=c.id join grade g on u.gradeid=g.id join college co on u.collegeid=co.id join academe a on u.academeid=a.id join specialty s on u.specialtyid=s.id join usertype t on u.typeid=t.id;";
		QueryRunner runner = new QueryRunner(DaoUtils.getSource());
		List<Users> list = runner.query(sql, new ResultSetHandler<List<Users>>() {
			public List<Users> handle(ResultSet rs) throws SQLException {
				List<Users> list = new ArrayList<Users>();
				while (rs.next()) {
					Users users = new Users();
					users.setId(rs.getInt("id"));
					users.setName(rs.getString("name"));
					users.setPwd(rs.getString("pwd"));
					users.setSex(rs.getString("sex"));
					users.setCardtype(rs.getString("cardtype"));
					users.setCardcode(rs.getString("cardcode"));
					users.setGrade(rs.getString("grade"));
					users.setCollege(rs.getString("college"));
					users.setAcademe(rs.getString("academe"));
					users.setSpecialty(rs.getString("specialty"));
					users.setEmail(rs.getString("email"));
					users.setTel(rs.getString("tel"));
					users.setUsertype(rs.getString("usertype"));
					users.setUserpower(rs.getString("userpower"));
					list.add(users);
				}
				return list;
			}
		});
		return list;
	}
	/**
	 * 搜索所有的管理员
	 * @return
	 * @throws SQLException
	 */
	public List<Users> sadmin() throws SQLException {
		String sql = "select u.id,u.name,u.pwd,u.sex,c.cardtype,u.cardcode,g.grade,co.college,a.academe,s.specialty,u.email,u.tel,t.usertype,t.userpower from users u join cardtype c on u.cardtypeid=c.id join grade g on u.gradeid=g.id join college co on u.collegeid=co.id join academe a on u.academeid=a.id join specialty s on u.specialtyid=s.id join usertype t on u.typeid=t.id where t.userpower='admin';";
		QueryRunner runner = new QueryRunner(DaoUtils.getSource());
		List<Users> list = runner.query(sql, new ResultSetHandler<List<Users>>() {
			public List<Users> handle(ResultSet rs) throws SQLException {
				List<Users> list = new ArrayList<Users>();
				while (rs.next()) {
					Users users = new Users();
					users.setId(rs.getInt("id"));
					users.setName(rs.getString("name"));
					users.setPwd(rs.getString("pwd"));
					users.setSex(rs.getString("sex"));
					users.setCardtype(rs.getString("cardtype"));
					users.setCardcode(rs.getString("cardcode"));
					users.setGrade(rs.getString("grade"));
					users.setCollege(rs.getString("college"));
					users.setAcademe(rs.getString("academe"));
					users.setSpecialty(rs.getString("specialty"));
					users.setEmail(rs.getString("email"));
					users.setTel(rs.getString("tel"));
					users.setUsertype(rs.getString("usertype"));
					users.setUserpower(rs.getString("userpower"));
					list.add(users);
				}
				return list;
			}
		});
		return list;
	}
	/**
	 * 搜索所有的读者用户
	 * @return
	 * @throws SQLException
	 */
	public List<Users> suser() throws SQLException {
		String sql = "select u.id,u.name,u.pwd,u.sex,c.cardtype,u.cardcode,g.grade,co.college,a.academe,s.specialty,u.email,u.tel,t.usertype,t.userpower from users u join cardtype c on u.cardtypeid=c.id join grade g on u.gradeid=g.id join college co on u.collegeid=co.id join academe a on u.academeid=a.id join specialty s on u.specialtyid=s.id join usertype t on u.typeid=t.id where t.userpower!='admin';";
		QueryRunner runner = new QueryRunner(DaoUtils.getSource());
		List<Users> list = runner.query(sql, new ResultSetHandler<List<Users>>() {
			public List<Users> handle(ResultSet rs) throws SQLException {
				List<Users> list = new ArrayList<Users>();
				while (rs.next()) {
					Users users = new Users();
					users.setId(rs.getInt("id"));
					users.setName(rs.getString("name"));
					users.setPwd(rs.getString("pwd"));
					users.setSex(rs.getString("sex"));
					users.setCardtype(rs.getString("cardtype"));
					users.setCardcode(rs.getString("cardcode"));
					users.setGrade(rs.getString("grade"));
					users.setCollege(rs.getString("college"));
					users.setAcademe(rs.getString("academe"));
					users.setSpecialty(rs.getString("specialty"));
					users.setEmail(rs.getString("email"));
					users.setTel(rs.getString("tel"));
					users.setUsertype(rs.getString("usertype"));
					users.setUserpower(rs.getString("userpower"));
					list.add(users);
				}
				return list;
			}
		});
		return list;
	}
	

	/**
	 * 通过ID搜索读者用户
	 * @return
	 * @throws SQLException
	 */
	public List<Users> sUserNId(int id) throws SQLException {
		String sql = "select u.id,u.name,u.pwd,u.sex,c.cardtype,u.cardcode,g.grade,co.college,a.academe,s.specialty,u.email,u.tel,t.usertype,t.userpower from users u join cardtype c on u.cardtypeid=c.id join grade g on u.gradeid=g.id join college co on u.collegeid=co.id join academe a on u.academeid=a.id join specialty s on u.specialtyid=s.id join usertype t on u.typeid=t.id where u.id=?;";
		QueryRunner runner = new QueryRunner(DaoUtils.getSource());
		List<Users> list = runner.query(sql, new ResultSetHandler<List<Users>>() {
			public List<Users> handle(ResultSet rs) throws SQLException {
				List<Users> list = new ArrayList<Users>();
				while (rs.next()) {
					Users users = new Users();
					users.setId(rs.getInt("id"));
					users.setName(rs.getString("name"));
					users.setPwd(rs.getString("pwd"));
					users.setSex(rs.getString("sex"));
					users.setCardtype(rs.getString("cardtype"));
					users.setCardcode(rs.getString("cardcode"));
					users.setGrade(rs.getString("grade"));
					users.setCollege(rs.getString("college"));
					users.setAcademe(rs.getString("academe"));
					users.setSpecialty(rs.getString("specialty"));
					users.setEmail(rs.getString("email"));
					users.setTel(rs.getString("tel"));
					users.setUsertype(rs.getString("usertype"));
					users.setUserpower(rs.getString("userpower"));
					list.add(users);
				}
				return list;
			}
		},id);
		return list;
	}
	
	public Boolean sUserP(String name, String pwd) throws SQLException {
		String sql = "select u.name,u.pwd,t.userpower,if(u.id in (select userid from borrow where backtime is null or plantime < now()),false,true) as isotime from users u join usertype t on u.typeid=t.id where u.name=? and u.pwd=?";
		QueryRunner runner = new QueryRunner(DaoUtils.getSource());
		List<Users> list = runner.query(sql, new ResultSetHandler<List<Users>>() {
			public List<Users> handle(ResultSet rs) throws SQLException {
				List<Users> list = new ArrayList<Users>();
				while (rs.next()) {
					Users users = new Users();
					users.setIsotime(rs.getBoolean("isotime"));
					list.add(users);
				}
				return list;
			}
		},name,pwd);
		return list.get(0).getIsotime();
	}
}
