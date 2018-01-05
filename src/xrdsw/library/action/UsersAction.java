package xrdsw.library.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import xrdsw.library.dao.UsersDao;
import xrdsw.library.domain.Users;

public class UsersAction {
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpSession session = request.getSession();
	
	public String Action(Users users) throws SQLException {
		String actval = users.getActval();
		String result = userLogin(users.getName(), users.getPwd());
//		System.out.println("返回结果："+result);
		if (actval.equals("login")) {
			return result;
		} else if(actval.equals("error")){
			return result;
		} else {			
			return "error";
		}
	}
	
	/**
	 * 处理用户登录方法
	 * @param name
	 * @param pwd
	 * @return
	 * @throws SQLException
	 */
	public String userLogin(String name,String pwd) throws SQLException {
		List<Users> users = new ArrayList<Users>();
		users = new UsersDao().sUserByNP(name, pwd);
		if (!users.isEmpty()) {// 根据查询结果返回指定字符串
			/* 将用户帐号保存在session中 */
			session.setAttribute("user", users.get(0));
			System.out.println("++++++++++++++++++++++++++++++++++++++++++++\n");
			System.out.println("用户名："+users.get(0).getName()+"|"+"权限："+users.get(0).getUserpower());
			return users.get(0).getUserpower();
		} else {
			request.setAttribute("error", "用户名或密码错误！");
			return "error";
		}
	}

}
