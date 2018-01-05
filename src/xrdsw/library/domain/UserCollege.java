package xrdsw.library.domain;

public class UserCollege {
	private int id;
	private String usercollege;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsercollege() {
		return usercollege;
	}
	public void setUsercollege(String usercollege) {
		this.usercollege = usercollege;
	}
	@Override
	public String toString() {
		String str = id + "|" + usercollege + "\n";
		return str;
	}

	public String execute() throws Exception {
		return null;
	}
}
