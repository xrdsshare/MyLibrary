package xrdsw.library.domain;

import java.sql.Date;

import xrdsw.library.action.BorrowAction;

public class Borrow {
	private int id;// 数据库id号
	private int userid;// 借阅者id号
	private int bookid;// 书本id号
	private Date borrowtime;// 借书日期
	private Date plantime;// 应还日期
	private Date backtime;// 还书日期
	private int borrowsum;// 借阅次数
	private String actval;// action入口标志
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public int getBookid() {
		return bookid;
	}

	public void setBookid(int bookid) {
		this.bookid = bookid;
	}

	public Date getBorrowtime() {
		return borrowtime;
	}

	public void setBorrowtime(Date borrowtime) {
		this.borrowtime = borrowtime;
	}

	public Date getPlantime() {
		return plantime;
	}

	public void setPlantime(Date plantime) {
		this.plantime = plantime;
	}

	public Date getBacktime() {
		return backtime;
	}

	public void setBacktime(Date backtime) {
		this.backtime = backtime;
	}

	public int getBorrowsum() {
		return borrowsum;
	}

	public void setBorrowsum(int borrowsum) {
		this.borrowsum = borrowsum;
	}

	public String getActval() {
		return actval;
	}

	public void setActval(String actval) {
		this.actval = actval;
	}

	@Override
	public String toString() {
		String str = id + "|" + bookid + "|" + userid + "|" + borrowtime + "|" + plantime + "|" + backtime + "|" + borrowsum + "\n";
		return str;
	}

	public String execute() throws Exception {
		return new BorrowAction().Action(this);
	}
}
