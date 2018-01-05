<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ page import="xrdsw.library.domain.Users"%>
<%@ page import="xrdsw.library.dao.UsersDao"%>
<%@ page import="java.util.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%
	List<Users> ulists = new UsersDao().sall();
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
							class="word_orange">当前位置：用户管理 &gt; 查询用户 &gt;&gt;&gt;</td>
					</tr>
					<tr>
						<td align="center" valign="top">
							<form action="" method="post" name="form1">
								<table width="98%" height="38" border="0" cellpadding="0"
									cellspacing="0" bgcolor="#E3F4F7" class="tableBorder_gray">
									<tr>
										<td align="center" bgcolor="#F9D16B">&nbsp;<img
											src="Images/search.gif" width="45" height="28"></td>
										<td bgcolor="#F9D16B">请选择查询依据： <select name="f"
											class="wenbenkuang" id="f">
												<option value="cardcode" selected>证件号</option>
												<option value="name">姓名</option>
										</select> <input name="us" type="text" id="us" size="50"> <input
											name="Submit" type="submit" class="btn_grey" value="查询"></td>
									</tr>
								</table>
								<%
									if (ulists == null || ulists.isEmpty()) {
								%>
								<table width="100%" height="30" border="0" cellpadding="0"
									cellspacing="0">
									<tr>
										<td height="36" align="center">暂无用户信息！</td>
									</tr>
								</table>
								<%
									} else {
										//通过迭代方式显示数据
										int id = 0;
										String name = "";
										String pwd = "";
										String sex = "";
										String cardtype = "";
										String cardcode = "";
										String grade = "";
										String college = "";
										String academe = "";
										String specialty = "";
										String email = "";
										String tel = "";
										String usertypes = "";
										String userpower = "";
								%>
								<table width="98%" border="1" cellpadding="0" cellspacing="0"
									bordercolor="#FFFFFF" bordercolordark="#F6B83B"
									bordercolorlight="#FFFFFF">
									<tr align="center" bgcolor="#e3F4F7">
										<td width="20%" bgcolor="#F9D16B">姓名</td>
										<td width="10%" bgcolor="#F9D16B">性别</td>
										<td width="15%" bgcolor="#F9D16B">证件号</td>
										<td width="10%" bgcolor="#F9D16B">年级</td>
										<td width="15%" bgcolor="#F9D16B">专业</td>
										<td width="15%" bgcolor="#F9D16B">用户类型</td>
										<td width="15%" bgcolor="#F9D16B">用户权限</td>
									</tr>
									<%
										for (int i = 0; i < ulists.size(); i++) {
												id = ulists.get(i).getId();
												name = ulists.get(i).getName();
												sex = ulists.get(i).getSex();
												cardcode = ulists.get(i).getCardcode();
												grade = ulists.get(i).getGrade();
												specialty = ulists.get(i).getSpecialty();
												usertypes = ulists.get(i).getUsertype();
												userpower = ulists.get(i).getUserpower();
									%>
									<tr>
										<td align="center" style="padding:5px;"><a
											href="${pageContext.request.contextPath}/Users&ID=<%=id%>">&nbsp;<%=name%></td>
										<td align="center" style="padding:5px;">&nbsp;<%=sex%></td>
										<td align="center" style="padding:5px;">&nbsp;<%=cardcode%></td>
										<td align="center" style="padding:5px;">&nbsp;<%=grade%></td>
										<td align="center" style="padding:5px;">&nbsp;<%=specialty%></td>
										<td align="center" style="padding:5px;">&nbsp;<%=usertypes%></td>
										<td align="center" style="padding:5px;">&nbsp;<%=userpower%></td>
									</tr>
									<%
										}
										}
									%>
								</table>
							</form>
						</td>
					</tr>
				</table> <%@ include file="/WEB-INF/comjsp/copyright.jsp"%></td>
		</tr>
	</table>
</body>
</html>
