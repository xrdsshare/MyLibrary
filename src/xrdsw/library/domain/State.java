package xrdsw.library.domain;

public class State {
	private int id;//流通状态id号
	private String state;//流通状态
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}

	@Override
	public String toString() {
		String str = id + "|" + state + "\n";
		return str;
	}

	public String execute() throws Exception {
		return null;
	}
}
