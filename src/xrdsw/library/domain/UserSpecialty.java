package xrdsw.library.domain;

public class UserSpecialty {
	private int id;
	private String userspecialty;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserspecialty() {
		return userspecialty;
	}
	public void setUserspecialty(String userspecialty) {
		this.userspecialty = userspecialty;
	}
	@Override
	public String toString() {
		String str = id + "|" + userspecialty + "\n";
		return str;
	}

	public String execute() throws Exception {
		return null;
	}
}
