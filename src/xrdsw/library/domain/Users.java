package xrdsw.library.domain;

import xrdsw.library.action.UsersAction;
import xrdsw.library.util.PrintAll;

public class Users {
	private int id;// 数据库id号
	private String name;// 姓名
	private String pwd;// 用户密码
	private String sex;// 性别
	private String cardtype;// 证件类型
	private String cardcode;// 证件
	private String grade;// 年级
	private String college;// 学校
	private String academe;// 学院
	private String specialty;// 专业
	private String email;// 邮件
	private String tel;// 电话
	private String usertype;// 用户类型
	private String userpower;// 用户权限
	private Boolean isotime;// 用户权限
	private String actval;// action入口识别字符

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getCardtype() {
		return cardtype;
	}

	public void setCardtype(String cardtype) {
		this.cardtype = cardtype;
	}

	public String getCardcode() {
		return cardcode;
	}

	public void setCardcode(String cardcode) {
		this.cardcode = cardcode;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getCollege() {
		return college;
	}

	public void setCollege(String college) {
		this.college = college;
	}

	public String getAcademe() {
		return academe;
	}

	public void setAcademe(String academe) {
		this.academe = academe;
	}

	public String getSpecialty() {
		return specialty;
	}

	public void setSpecialty(String specialty) {
		this.specialty = specialty;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
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

	public Boolean getIsotime() {
		return isotime;
	}

	public void setIsotime(Boolean isotime) {
		this.isotime = isotime;
	}

	public String getActval() {
		return actval;
	}

	public void setActval(String actval) {
		this.actval = actval;
	}
	
	@Override
	public String toString() {
		return new PrintAll().getFiledsInfo(this);
	}

	public String execute() throws Exception {
		return new UsersAction().Action(this);
	}

}
