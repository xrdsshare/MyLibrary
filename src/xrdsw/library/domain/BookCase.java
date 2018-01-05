package xrdsw.library.domain;

public class BookCase {
	private int id;// 图书分类id号
	private String bookcase;// 图书编码

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getBookcase() {
		return bookcase;
	}

	public void setBookcase(String bookcase) {
		this.bookcase = bookcase;
	}

	@Override
	public String toString() {
		String str = id + "|" + bookcase + "\n";
		return str;
	}

	public String execute() throws Exception {
		return null;
	}
}
