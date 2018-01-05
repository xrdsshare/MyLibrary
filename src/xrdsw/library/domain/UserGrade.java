package xrdsw.library.domain;

public class UserGrade {
	private int id;
	private String usergrade;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsergrade() {
		return usergrade;
	}
	public void setUsergrade(String usergrade) {
		this.usergrade = usergrade;
	}
	@Override
	public String toString() {
		String str = id + "|" + usergrade + "\n";
		return str;
	}

	public String execute() throws Exception {
		return null;
	}
}
