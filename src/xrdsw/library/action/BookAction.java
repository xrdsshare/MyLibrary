package xrdsw.library.action;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import xrdsw.library.domain.Book;

public class BookAction {
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpSession session = request.getSession();

	public String Action(Book book) throws SQLException {
		String actval = book.getActval();
		String select = book.getSelect();
		String val = book.getVal();

		System.out.println("bookactval:" + actval + "\n");
		if (actval == "chg") {
			return "ok";
		} else if (actval == "borrow" || "borrow".equals(actval)) {
			System.out.println("选择：" + select + "|" + "值：" + val + "\n");
			request.setAttribute("select", select);
			request.setAttribute("val", val);
			return "borrowbook";
		} else if (actval == "renew" || "renew".equals(actval)) {
			
			return "renew";
		} else {
			return "renew";
		}
	}
}
