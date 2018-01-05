package xrdsw.library.domain;

public class UserAcademe {
	private int id;
	private String useracademe;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUseracademe() {
		return useracademe;
	}
	public void setUseracademe(String useracademe) {
		this.useracademe = useracademe;
	}
	@Override
	public String toString() {
		String str = id + "|" + useracademe + "\n";
		return str;
	}

	public String execute() throws Exception {
		return null;
	}
}
