package xrdsw.library.domain;

public class UserType {
	private int id;
	private String usertype;
	private String userpower;
	private int days;
	private int number;
	private int backprice;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsertype() {
		return usertype;
	}
	public void setUsertype(String usertype) {
		this.usertype = usertype;
	}
	public String getUserpower() {
		return userpower;
	}
	public void setUserpower(String userpower) {
		this.userpower = userpower;
	}
	public int getDays() {
		return days;
	}
	public void setDays(int days) {
		this.days = days;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public int getBackprice() {
		return backprice;
	}
	public void setBackprice(int backprice) {
		this.backprice = backprice;
	}
	@Override
	public String toString() {
		String str = id + "|" + usertype + "|" + userpower + "|" + days + "|" + number + "|" + backprice + "\n";
		return str;
	}

	public String execute() throws Exception {
		return null;
	}
}
