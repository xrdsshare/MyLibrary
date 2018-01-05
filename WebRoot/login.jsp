<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>高校图书馆管理系统</title>
<link href="CSS/style.css" rel="stylesheet">
<script language="javascript">
	function check(form) {
		if (form.name.value == "") {
			alert("请输入用户名称!");form.name.focus();return false;
		}
		if (form.pwd.value == "") {
			alert("请输入用户密码!");form.pwd.focus();return false;
		}
	}
</script>
<script language="javascript">
	document.onkeypress = function() {
		if (event.keyCode == 13) {
			return check(form1)
			return false;
		}
	}
</script>
</head>
<body">
	<table width="778" border="0" align="center" cellpadding="0"
		cellspacing="0" bgcolor="#F9D16B" class="tableBorder">
		<tr>
			<td>
				<table width="760" border="0" align="center" cellpadding="0"
					cellspacing="0">
					<tr>
						<td height="142" valign="top">&nbsp;</td>
					</tr>
				</table>
			</td>
		</tr>
		<td>
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td valign="top"><table width="100%" height="525" border="0"
							align="center" cellpadding="0" cellspacing="0">
							<tr>
								<td height="523" align="center" valign="top"><table
										width="100%" height="271" border="0" cellpadding="0"
										cellspacing="0">
										<tr>
											<td height="271" align="right" valign="top"
												class="word_orange"><table width="100%" height="255"
													border="0" cellpadding="0" cellspacing="0"
													background="Images/login.jpg">
													<tr>
														<td height="57">&nbsp;</td>
													</tr>
													<tr>
														<td height="179" valign="top"><table width="100%"
																height="63" border="0" cellpadding="0" cellspacing="0">
																<tr>
																	<td width="2%">&nbsp;</td>
																	<td width="97%" align="center" valign="top">
																		<form name="form1" method="post"
																			action="${pageContext.request.contextPath}/mylibrary?actval=login">
																			<table width="100%" border="0" cellpadding="0"
																				cellspacing="0" bordercolorlight="#FFFFFF"
																				bordercolordark="#D2E3E6">
																				<tr>
																					<td height="57">&nbsp;</td>
																					<td height="57" colspan="2" align="center">&nbsp;</td>
																					<td>&nbsp;</td>
																				</tr>
																				<tr>
																					<td width="50%" height="37">&nbsp;</td>
																					<td width="10%">用户名称：</td>
																					<td width="31%"><input name="name" type="text"
																						class="logininput" id="name" size="27"></td>
																					<td width="9%">&nbsp;</td>
																				</tr>
																				<tr>
																					<td height="37">&nbsp;</td>
																					<td>用户密码：</td>
																					<td><input name="pwd" type="password"
																						class="logininput" id="pwd" size="27"></td>
																					<td>&nbsp;</td>
																				</tr>
																				<tr>
																					<td height="30">&nbsp;</td>
																					<td colspan="2" align="center"><input
																						name="Submit" type="submit" class="btn_grey"
																						value="确定" onClick="return check(form1)">
																						&nbsp; <input name="Submit3" type="reset"
																						class="btn_grey" value="重置">&nbsp; <input
																						name="Submit2" type="button" class="btn_grey"
																						value="关闭" onClick="window.close();"></td>
																					<td>&nbsp;</td>
																				</tr>
																			</table>
																		</form>
																	</td>
																	<td width="1%">&nbsp;</td>
																</tr>
															</table></td>
													</tr>
													<tr>
														<td height="19">&nbsp;</td>
													</tr>
												</table></td>
										</tr>

									</table>
									<table width="100%" height="27" border="0" cellpadding="0"
										cellspacing="0">
										<tr>
											<td align="center" class="word_login">
												软件工程及数据库技术课程设计-高校图书管理系统</td>
										</tr>
									</table></td>
							</tr>
						</table></td>
				</tr>
			</table>
		</td>
	</table>
</body>
</html>