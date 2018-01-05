<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ page import="xrdsw.library.domain.Users"%>
<%@ page import="java.util.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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
							class="word_orange">当前位置：个人中心 &gt; 修改密码 &gt;&gt;&gt;</td>
					</tr>
					<tr>
						<td align="center" valign="top">
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td width="84%">&nbsp;</td>
								</tr>
							</table>
							<form name="form1" method="post"
								action="${pageContext.request.contextPath}/modifypwd">
								<table width="47%" border="0" cellpadding="0" cellspacing="0"
									bordercolor="#FFFFFF" bordercolordark="#D2E3E6"
									bordercolorlight="#FFFFFF">
									<tr align="center">
										<td width="27%" align="left" style="padding:5px;">账号名称：</td>
										<td width="73%" align="left"><input name="name"
											type="text" id="name"
											value="<%=chStr.toChinese(user.getName())%>"
											readonly="yes" size="30"></td>
									<tr>
										<td align="left" style="padding:5px;">原密码：</td>
										<td align="left"><input name="oldpwd" type="password"
											id="oldpwd" size="30"> <input name="holdpwd"
											type="hidden" id="holdpwd"
											value="<%=chStr.toChinese(user.getPwd())%>"></td>
									</tr>
									<tr>
										<td align="left" style="padding:5px;">新密码：</td>
										<td align="left"><input name="pwd" type="password"
											id="pwd" size="30"></td>
									</tr>
									<tr>
										<td align="left" style="padding:5px;">确认新密码：</td>
										<td align="left"><input name="pwd1" type="password"
											id="pwd1" size="30"></td>
									</tr>
									<tr>
										<td height="65" align="left" style="padding:5px;">&nbsp;</td>
										<td><input name="Submit" type="submit" class="btn_grey"
											value="保存" onClick="return checkForm(form1)"> &nbsp;
											<input name="Submit2" type="reset" class="btn_grey"
											value="取消"></td>
									</tr>
								</table>
							</form>
						</td>
					</tr>
				</table> <%@ include file="/WEB-INF/comjsp/copyright.jsp"%></td>
		</tr>
	</table>
</body>
</html>
