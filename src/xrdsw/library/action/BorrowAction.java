package xrdsw.library.action;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import xrdsw.library.dao.BorrowDao;
import xrdsw.library.domain.Borrow;

public class BorrowAction {
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpSession session = request.getSession();

	public String Action(Borrow borrow) throws SQLException {
		System.out.println("borrow.getId():"+borrow.getId());
		String actval = borrow.getActval();
		if (actval=="renew" || "renew".equals(actval)) {
			new BorrowDao().uDTime(borrow.getId());
			return "renew";
		} else{
			return "ok";
		}
	}
}
