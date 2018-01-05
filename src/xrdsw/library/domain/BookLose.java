package xrdsw.library.domain;

import java.sql.Date;

public class BookLose {
	private int id;//图书id号
	private Date logtime;//丢书记录时间
	private String mngname;//记录者姓名
	private String isbn;//图书ISBN号
	private String bookname;//图书名称
	private String bookauther;//作者
	private String bookcom;//出版社
	private String username;//丢书人姓名
	private String usercardcode;//丢书人证件号
	private String actval;//action入口标志
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Date getLogtime() {
		return logtime;
	}
	public void setLogtime(Date logtime) {
		this.logtime = logtime;
	}
	public String getMngname() {
		return mngname;
	}
	public void setMngname(String mngname) {
		this.mngname = mngname;
	}
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public String getBookname() {
		return bookname;
	}
	public void setBookname(String bookname) {
		this.bookname = bookname;
	}
	public String getBookauther() {
		return bookauther;
	}
	public void setBookauther(String auther) {
		this.bookauther = auther;
	}
	public String getBookcom() {
		return bookcom;
	}
	public void setBookcom(String company) {
		this.bookcom = company;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUsercardcode() {
		return usercardcode;
	}
	public void setUsercardcode(String usercardcode) {
		this.usercardcode = usercardcode;
	}
	public String getActval() {
		return actval;
	}
	public void setActval(String actval) {
		this.actval = actval;
	}

	@Override
	public String toString() {
		String str = id + "|" + logtime + "|" + mngname + "|" + isbn + "|" + bookname + "|" + bookauther + "|"
				+ bookcom + "|" + username + "|" + usercardcode + "\n";
		return str;
	}

	public String execute() throws Exception {			
			return null;
	}
}
