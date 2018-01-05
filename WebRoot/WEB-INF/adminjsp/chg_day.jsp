<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ page import="xrdsw.library.domain.Users"%>
<%@ page import="xrdsw.library.domain.UserType"%>
<%@ page import="xrdsw.library.dao.UserTypeDao"%>
<%@ page import="java.util.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%
	List<UserType> alist = new UserTypeDao().sdays("admin");
	List<UserType> ulist = new UserTypeDao().sdays("user");
	List<UserType> olist = new UserTypeDao().sdays("other");
%>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="JS/onclock.JS"></script>
<script language="jscript">
	function check(form) {
		if (form.itname.value == "") {
			alert("XXXXXXXX!");form.itname.focus();return false;
		}
		if (form.itisbn.value == "") {
			alert("XXXXXXXXX");form.itisbn.focus();return false;
		}
	}
</script>
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
							class="word_orange">当前位置：系统设置 &gt; 借阅设置 &gt;&gt;&gt;</td>
					</tr>
					<tr>
						<td align="center" valign="top"><table width="100%"
								height="493" border="0" cellpadding="0" cellspacing="0">
								<tr>
									<td align="center" valign="top">
										<form name="form1" method="post"
											action="${pageContext.request.contextPath}/bookmng?action=bookAdd">
											<table width="600" height="432" border="0" cellpadding="0"
												cellspacing="0" bgcolor="#FFFFFF">
												<tr>
													<td width="173" align="center">管理员可借天数：</td>
													<td width="427" height="39"><input name="adays"
														type="text" id="adays" size="40">&nbsp;&nbsp;目前：<%=alist.get(0).getDays()%>天</td>
												</tr>
												<tr>
													<td width="173" align="center">普通用户可借天数：</td>
													<td width="427" height="39"><input name="udays"
														type="text" id="udays" size="40">&nbsp;&nbsp;目前：<%=ulist.get(0).getDays()%>天</td>
												</tr>
												<tr>
													<td width="173" align="center">其他用户可借天数：</td>
													<td width="427" height="39"><input name="odays"
														type="text" id="odays" size="40">&nbsp;&nbsp;目前：<%=olist.get(0).getDays()%>天</td>
												</tr>
												<tr>
													<td height="13" align="left" style="padding-left:7px;"><hr
															size="1"></td>
												</tr>
												<tr>
													<td width="173" align="center">管理员可借本数：</td>
													<td width="427" height="39"><input name="anum"
														type="text" id="anum" size="40">&nbsp;&nbsp;目前：<%=alist.get(0).getNumber()%>本</td>
												</tr>
												<tr>
													<td width="173" align="center">普通用户可借本数：</td>
													<td width="427" height="39"><input name="unum"
														type="text" id="unum" size="40">&nbsp;&nbsp;目前：<%=ulist.get(0).getNumber()%>本</td>
												</tr>
												<tr>
													<td width="173" align="center">其他用户可借本数：</td>
													<td width="427" height="39"><input name="onum"
														type="text" id="onum" size="40">&nbsp;&nbsp;目前：<%=olist.get(0).getNumber()%>本</td>
												</tr>
												<tr>
													<td height="13" align="left" style="padding-left:7px;"><hr
															size="1"></td>
												</tr>
												<tr>
													<td width="173" align="center">管理员超期应付款：</td>
													<td width="427" height="39"><input name="apri"
														type="text" id="apri" size="40">&nbsp;&nbsp;目前：<%=alist.get(0).getBackprice()%>元</td>
												</tr>
												<tr>
													<td width="173" align="center">普通用户超期应付款：</td>
													<td width="427" height="39"><input name="upri"
														type="text" id="upri" size="40">&nbsp;&nbsp;目前：<%=ulist.get(0).getBackprice()%>元</td>
												</tr>
												<tr>
													<td width="173" align="center">其他用户超期应付款：</td>
													<td width="427" height="39"><input name="opri"
														type="text" id="opri" size="40">&nbsp;&nbsp;目前：<%=olist.get(0).getBackprice()%>元</td>
												</tr>
												<tr>
													<td height="13" align="left" style="padding-left:7px;"><hr
															size="1"></td>
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
