package xrdsw.library.log;

public class LogOut {
	private Boolean canOut = true;
	
	public void myprint(String str) {
		if(canOut){
			System.out.print(str+"\n");
		}
	}
}
