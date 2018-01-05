package xrdsw.library.domain;

import java.sql.Date;

import xrdsw.library.action.BookAction;

public class Book {
	private int id;//图书id号
	private String bookcode;//图书编码
	private String isbn;//isbn号码
	private String seekcode;//索书号
	private String bookname;//图书名称
	private String auther;//作者
	private String company;//出版社
	private String price;//价格
	private String keywords;//关键字
	private int amount;//副本数
	private String bookcase;//图书分类
	private Date booktime;//出版日期
	private String state;//流通状态
	private String actval;//action入口标志
	private String select;//select选择
	private String val;//选择后input的值
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getBookcode() {
		return bookcode;
	}
	public void setBookcode(String bookcode) {
		this.bookcode = bookcode;
	}
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public String getSeekcode() {
		return seekcode;
	}
	public void setSeekcode(String seekcode) {
		this.seekcode = seekcode;
	}
	public String getBookname() {
		return bookname;
	}
	public void setBookname(String bookname) {
		this.bookname = bookname;
	}
	public String getAuther() {
		return auther;
	}
	public void setAuther(String auther) {
		this.auther = auther;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getKeywords() {
		return keywords;
	}
	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getBookcase() {
		return bookcase;
	}
	public void setBookcase(String bookcase) {
		this.bookcase = bookcase;
	}
	public Date getBooktime() {
		return booktime;
	}
	public void setBooktime(Date booktime) {
		this.booktime = booktime;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getActval() {
		return actval;
	}
	public void setActval(String actval) {
		this.actval = actval;
	}
	
	public String getSelect() {
		return select;
	}
	public void setSelect(String select) {
		this.select = select;
	}
	public String getVal() {
		return val;
	}
	public void setVal(String val) {
		this.val = val;
	}
	@Override
	public String toString() {
		String str = id + "|" + bookcode + "|" + isbn + "|" + seekcode + "|" + bookname + "|" + auther + "|" + company + "|"
				+ price + "|" + keywords + "|" + amount + "|" + bookcase + "|" + booktime + "|" + state + "\n";
		return str;
	}

	public String execute() throws Exception {
		return new BookAction().Action(this);
	}
}
