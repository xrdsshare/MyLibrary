<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ page import="xrdsw.library.domain.Users"%>
<%@ page import="xrdsw.library.domain.UserAcademe"%>
<%@ page import="xrdsw.library.dao.UserAcademeDao"%>
<%@ page import="xrdsw.library.domain.UserCollege"%>
<%@ page import="xrdsw.library.dao.UserCollegeDao"%>
<%@ page import="xrdsw.library.domain.UserGrade"%>
<%@ page import="xrdsw.library.dao.UserGradeDao"%>
<%@ page import="xrdsw.library.domain.UserSpecialty"%>
<%@ page import="xrdsw.library.dao.UserSpecialtyDao"%>
<%@ page import="xrdsw.library.domain.UserType"%>
<%@ page import="xrdsw.library.dao.UserTypeDao"%>
<%@ page import="java.util.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%
	int uaid = 0;
	int ucid = 0;
	int ugid = 0;
	int usid = 0;
	int utid = 0;
	String useracademe = "";
	String usercollege = "";
	String usergrade = "";
	String userspecialty = "";
	String usertypes = "";
	List<UserAcademe> ualist = new UserAcademeDao().sall();
	List<UserCollege> uclist = new UserCollegeDao().sall();
	List<UserGrade> uglist = new UserGradeDao().sall();
	List<UserSpecialty> uslist = new UserSpecialtyDao().sall();
	List<UserType> utlist = new UserTypeDao().sall();
%>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="JS/onclock.JS"></script>
<head>
<title>高校图书馆管理系统</title>
<link href="CSS/style.css" rel="stylesheet">
</head>
<body onLoad="clockon(bgclock)">
	<%@include file="/WEB-INF/comjsp/banner.jsp"%>
	<%@include file="/WEB-INF/comjsp/commenu.jsp"%>

	<table width="460" border="0" cellspacing="0" cellpadding="0"
		align="center">
		<tr>
			<td valign="top" bgcolor="#FFFFFF"><table width="100%"
					height="450" border="0" align="center" cellpadding="0"
					cellspacing="0" bgcolor="#FFFFFF" class="tableBorder_gray">
					<tr>
						<td height="27" valign="top" style="padding:5px;"
							class="word_orange">当前位置：用户管理 &gt; 添加用户 &gt;&gt;&gt;</td>
					</tr>
					<tr>
						<td align="center" valign="top"><table width="100%"
								height="493" border="0" cellpadding="0" cellspacing="0">
								<tr>
									<td align="center" valign="top">
										<form name="form1" method="post"
											action="reader.do?action=readerAdd">
											<table width="600" height="432" border="0" cellpadding="0"
												cellspacing="0" bgcolor="#FFFFFF">
												<tr>
													<td width="173" align="center">用户姓名：</td>
													<td width="427" height="39"><input name="name" 
														type="text"> *</td>
												</tr>
												<tr>
													<td width="173" align="center">性别：</td>
													<td height="35"><input name="sex" type="radio"
														class="noborder" id="radiobutton" value="男" checked>
														<label for="radiobutton">男 </label> <label> <input
															name="sex" type="radio" class="noborder" value="女">
															女
													</label></td>
												</tr>
												<tr>
													<td align="center">用户密码：</td>
													<td><input name="pwd" type="password" id="pwd">
														*</td>
												</tr>
												<tr>
													<td align="center">用户类型：</td>
													<td><select name="usertype" class="wenbenkuang"
														id="usertype">
															<%
																for (int i = 0; i < utlist.size(); i++) {
																	utid = utlist.get(i).getId();
																	usertypes = utlist.get(i).getUsertype();
															%>

															<option value="<%=utid%>"><%=usertypes%></option>
															<%
																}
															%>
													</select></td>
												</tr>
												<tr>
													<td align="center">用户权限：</td>
													<td><select name="userpower" class="wenbenkuang"
														id="userpower">
															<option value="用户" selected>user</option>
															<option value="管理员">admin</option>
															<option value="其他">other</option>
													</select></td>
												</tr>
												<tr>
													<td align="center">用户年级：</td>
													<td><select name="grade" class="wenbenkuang"
														id="grade">
															<%
																for (int i = 0; i < uglist.size(); i++) {
																	ugid = uglist.get(i).getId();
																	usergrade = uglist.get(i).getUsergrade();
															%>

															<option value="<%=ugid%>"><%=usergrade%></option>
															<%
																}
															%>
													</select></td>
												</tr>
												<tr>
													<td align="center">用户学校：</td>
													<td><select name="college" class="wenbenkuang"
														id="college">
															<%
																for (int i = 0; i < uclist.size(); i++) {
																	ucid = uclist.get(i).getId();
																	usercollege = uclist.get(i).getUsercollege();
															%>

															<option value="<%=ucid%>"><%=usercollege%></option>
															<%
																}
															%>
													</select></td>
												</tr>
												<tr>
													<td align="center">用户学院：</td>
													<td><select name="academe" class="wenbenkuang"
														id="academe">
															<%
																for (int i = 0; i < ualist.size(); i++) {
																	uaid = ualist.get(i).getId();
																	useracademe = ualist.get(i).getUseracademe();
															%>

															<option value="<%=uaid%>"><%=useracademe%></option>
															<%
																}
															%>
													</select></td>
												</tr>
												<tr>
													<td align="center">用户专业：</td>
													<td><select name="specialty" class="wenbenkuang"
														id="specialty">
															<%
																for (int i = 0; i < uslist.size(); i++) {
																	usid = uslist.get(i).getId();
																	userspecialty = uslist.get(i).getUserspecialty();
															%>

															<option value="<%=usid%>"><%=userspecialty%></option>
															<%
																}
															%>
													</select></td>
												</tr>
												<tr>
													<td align="center">证件类型：</td>
													<td><select name="cardtype" class="wenbenkuang"
														id="cardtype">
															<option value="身份证" selected>身份证</option>
															<option value="学生证">学生证</option>
															<option value="工作证">工作证</option>
													</select></td>
												</tr>
												<tr>
													<td align="center">证件号码：</td>
													<td><input name="cardcode" type="text" id="cardcode">
														*</td>
												</tr>
												<tr>
													<td align="center">电话：</td>
													<td><input name="tel" type="text" id="tel"></td>
												</tr>
												<tr>
													<td align="center">Email：</td>
													<td><input name="email" type="text" id="email"
														size="50"></td>
												</tr>
												<tr>
													<td align="center">&nbsp;</td>
													<td><input name="Submit" type="submit"
														class="btn_grey" value="保存" onClick="return check(form1)">
														&nbsp; <input name="Submit2" type="button"
														class="btn_grey" value="返回" onClick="history.back()"></td>
												</tr>
											</table>
										</form>
									</td>
								</tr>
							</table></td>
					</tr>
				</table> <%@ include file="/WEB-INF/comjsp/copyright.jsp"%></td>
		</tr>
	</table>
</body>
</html>
