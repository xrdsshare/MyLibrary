package xrdsw.library.domain;

public class Company {
	private int id;// 出版社id号
	private String company;// 出版社名字

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	@Override
	public String toString() {
		String str = id + "|" + company + "\n";
		return str;
	}

	public String execute() throws Exception {
		return null;
	}
}
