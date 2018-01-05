<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ page import="xrdsw.library.domain.Users"%>
<%@ page import="xrdsw.library.dao.UsersDao"%>
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
<script language="javascript">
	function checkForm(form) {
		for (i = 0; i < form.length; i++) {
			if (form.elements[i].value == "") {
				alert("请将信息添写完整!");
				form.elements[i].focus();
				return false;
			}
		}
	}
</script>
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
							class="word_orange">当前位置：个人中心 &gt; 个人资料 &gt;&gt;&gt;</td>
					</tr>
					<tr>
						<td align="center" valign="top">
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td width="84%">&nbsp;</td>
								</tr>
							</table>
							<form name="form1" method="post"
								action="library.do?action=libraryModify">
								<table width="58%" border="0" cellpadding="0" cellspacing="0"
									bordercolor="#FFFFFF" bordercolordark="#D2E3E6"
									bordercolorlight="#FFFFFF">
									<%
										UsersDao userall = new UsersDao();
										Users datauser = userall.sUserAll(user.getName(), user.getPwd()).get(0);
									%>
									<tr align="center">
										<td width="20%" align="left" style="padding:5px;">账号名称：</td>
										<td width="80%" align="left"><input name="dataName"
											type="text" id="dataName" value="<%=datauser.getName()%>"
											size="30"></td>
									</tr>
									<tr>
										<td align="left" style="padding:5px;">用户性别：</td>
										<td align="left"><input name="dataSex" type="text"
											id="dataSex" size="30" value="<%=datauser.getSex()%>"></td>
									</tr>
									<tr>
										<td align="left" style="padding:5px;">证件类型：</td>
										<td align="left"><input name="dataCardtype" type="text"
											id="dataCardtype" size="30" value="<%=datauser.getCardtype()%>"></td>
									</tr>
									<tr>
										<td align="left" style="padding:5px;">证件号码：</td>
										<td align="left"><input name="dataCardcode" type="text"
											id="dataCardcode" size="30" value="<%=datauser.getCardcode()%>"></td>
									</tr>
									<tr>
										<td align="left" style="padding:5px;">用户年级：</td>
										<td align="left"><input name="dataGrade" type="text"
											id="dataGrade" size="30" value="<%=datauser.getGrade()%>"></td>
									</tr>
									<tr>
										<td align="left" style="padding:5px;">所在学校：</td>
										<td align="left"><input name="dataCollege" type="text"
											id="dataCollege" size="30" value="<%=datauser.getCollege()%>"></td>
									</tr>
									<tr>
										<td align="left" style="padding:5px;">所在学院：</td>
										<td align="left"><input name="dataAcademe" type="text"
											id="dataAcademe" size="30" value="<%=datauser.getAcademe()%>"></td>
									</tr>
									<tr>
										<td align="left" style="padding:5px;">所在专业：</td>
										<td align="left"><input name="dataSpecialty" type="text"
											id="dataSpecialty" size="30" value="<%=datauser.getSpecialty()%>"></td>
									</tr>
									<tr>
										<td align="left" style="padding:5px;">用户邮箱：</td>
										<td align="left"><input name="dataEmail" type="text"
											id="dataEmail" size="30" value="<%=datauser.getEmail()%>"></td>
									</tr>
									<tr>
										<td align="left" style="padding:5px;">用户电话：</td>
										<td align="left"><input name="dataEmail" type="text"
											id="dataEmail" size="30" value="<%=datauser.getEmail()%>"></td>
									</tr>
									<tr>
										<td align="left" style="padding:5px;">用户权限：</td>
										<td align="left"><input name="dataTel" type="text"
											id="dataTel" size="30" value="<%=datauser.getTel()%>"></td>
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
