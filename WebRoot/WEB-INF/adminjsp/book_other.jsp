<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ page import="xrdsw.library.domain.Users"%>
<%@ page import="java.util.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%
	int ID = 0;
	String bkcase = "";
%>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="JS/onclock.JS"></script>
<script language="javascript">
	function check(form) {
		if (form.bkcase.value == "") {
			alert("请输入分类名称!");form.bkcase.focus();return false;
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
					height="450" border="0" cellpadding="0"
					cellspacing="0" bgcolor="#FFFFFF" class="tableBorder_gray">
					<tr>
						<td height="27" valign="top" style="padding:5px;"
							class="word_orange">当前位置：图书管理 &gt; 相关管理 &gt;&gt;&gt;</td>
					</tr>
					<tr>
						<td width="97%" align="center" valign="top">
							<form name="form1" method="post"
								action="${pageContext.request.contextPath}/mytest">
								<table width="75%" border="0" cellpadding="0" cellspacing="0"
									bordercolorlight="#FFFFFF" bordercolordark="#D2E3E6">
									<tr>
										<td align="center" width="20%" height="30">&nbsp;添加分类：</td>
										<td align="center" width="40%"><input name="name" type="text" id="name" size="50"></td>
										<td align="center" width="20%"><input name="Submit" type="submit"
											class="btn_grey" value="确定" onClick="return check(form1)">
											&nbsp;</td>
										<td align="center" width="20%"><input name="case" type="button"
											class="btn_grey" value="查看分类" onClick="return check(form1)">
											&nbsp;</td>
									</tr>
								</table>
							</form>
						</td>
					</tr>
					<tr>
						<td width="97%" align="center" valign="top">
							<form name="form1" method="post"
								action="${pageContext.request.contextPath}/mytest">
								<table width="75%" border="0" cellpadding="0" cellspacing="0"
									bordercolorlight="#FFFFFF" bordercolordark="#D2E3E6">
									<tr>
										<td align="center" width="20%" height="30">&nbsp;添加出版社：</td>
										<td align="center" width="40%"><input name="name" type="text" id="name" size="50"></td>
										<td align="center" width="20%"><input name="Submit" type="submit"
											class="btn_grey" value="确定" onClick="return check(form1)">
											&nbsp;</td>
										<td align="center" width="20%"><input name="case" type="button"
											class="btn_grey" value="查看出版社" onClick="return check(form1)">
											&nbsp;</td>
									</tr>
								</table>
							</form>
						</td>
					</tr>
					<tr>
						<td width="97%" align="center" valign="top">
							<form name="form1" method="post"
								action="${pageContext.request.contextPath}/mytest">
								<table width="75%" border="0" cellpadding="0" cellspacing="0"
									bordercolorlight="#FFFFFF" bordercolordark="#D2E3E6">
									<tr>
										<td align="center" width="20%" height="30">&nbsp;添加流通状态：</td>
										<td align="center" width="40%"><input name="name" type="text" id="name" size="50"></td>
										<td align="center" width="15%"><input name="Submit" type="submit"
											class="btn_grey" value="确定" onClick="return check(form1)">
											&nbsp;</td>
										<td align="center" width="25%"><input name="case" type="button"
											class="btn_grey" value="查看流通状态" onClick="return check(form1)">
											&nbsp;</td>
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
