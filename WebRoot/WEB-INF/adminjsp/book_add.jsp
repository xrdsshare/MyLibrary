<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ page import="xrdsw.library.domain.Users"%>
<%@ page import="xrdsw.library.domain.BookCase"%>
<%@ page import="xrdsw.library.dao.BookCaseDao"%>
<%@ page import="xrdsw.library.domain.Company"%>
<%@ page import="xrdsw.library.dao.CompanyDao"%>
<%@ page import="xrdsw.library.domain.State"%>
<%@ page import="xrdsw.library.dao.StateDao"%>
<%@ page import="java.util.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%
	int typeID = 0;
	String typename = "";
	int comID = 0;
	String comname = "";
	int sID = 0;
	String sname = "";
	BookCaseDao bookcasedao = new BookCaseDao();
	List<BookCase> list = bookcasedao.sBookCase();
	CompanyDao companydao = new CompanyDao();
	List<Company> comlist = companydao.sCompany();
	StateDao statedao = new StateDao();
	List<State> slist = statedao.sstate();
	List<State> listt = null;
	if(list == null || list.isEmpty()){
		out.println("<script>alert('请先录入图书分类信息!');history.back(-1);</script>");
	}else if(comlist == null || comlist.isEmpty()){
		out.println("<script>alert('请先录入出版社信息!');history.back(-1);</script>");
	}else if(slist == null || slist.isEmpty()){
		out.println("<script>alert('请先录入流通状态信息!');history.back(-1);</script>");
	}
%>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="JS/onclock.JS"></script>
<script language="jscript">
	function check(form) {
		if (form.itname.value == "") {
			alert("请输入图书名称!");form.itname.focus();return false;
		}
		if (form.itisbn.value == "") {
			alert("请输入ISBN!");form.itisbn.focus();return false;
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
							class="word_orange">当前位置：图书管理 &gt; 图书入库 &gt;&gt;&gt;</td>
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
													<td width="173" align="center">图书名称：</td>
													<td width="427" height="39"><input name="itname"
														type="text" id="itname" size="40"> *</td>
												</tr>
												<tr>
													<td align="center">I&nbsp;&nbsp;S&nbsp;&nbsp;B&nbsp;&nbsp;N：</td>
													<td height="39"><input name="itisbn" type="text"
														id="itisbn" size="40"> *</td>
												</tr>
												<tr>
													<td align="center">图书分类：</td>
													<td><select name="typeId" class="wenbenkuang"
														id="typeId">
															<%
																for (int i = 0; i < list.size(); i++) {
																	typeID = list.get(i).getId();
																	typename = list.get(i).getBookcase();
															%>

															<option value="<%=typeID%>"><%=typename%></option>
															<%
																}
															%>
													</select></td>
												</tr>
												<tr>
													<td align="center">作&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;者：</td>
													<td><input name="author" type="text" id="author"
														size="40"></td>
												</tr>
												<tr>
													<td align="center">关&nbsp;&nbsp;键&nbsp;&nbsp;字：</td>
													<td><input name="itkeywords" type="text"
														id="itkeywords" size="40"></td>
												</tr>
												<tr>
													<td align="center">出版日期：</td>
													<td><input name="ittime" type="text" id="ittime"
														size="40">(日期格式：2018-01-01)</td>
												</tr>
												<tr>
													<td align="center">出&nbsp;&nbsp;版&nbsp;&nbsp;社：</td>
													<td><select name="company" class="wenbenkuang">
															<%
																for (int i = 0; i < comlist.size(); i++) {
																	comID = comlist.get(i).getId();
																	comname = comlist.get(i).getCompany();
															%>

															<option value="<%=comID%>"><%=comname%></option>
															<%
																}
															%>
													</select></td>
												</tr>
												<tr>
													<td align="center">价&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;格：</td>
													<td><input name="price" type="text" id="price">
														(元)</td>
												</tr>
												<tr>
													<td align="center">馆藏总数：</td>
													<td><input name="amount" type="text" id="amount"></td>
												</tr>
												<tr>
													<td align="center">流通状态：</td>
													<td><select name="stateid" class="wenbenkuang"
														id="stateid">
															<%
																for (int i = 0; i < slist.size(); i++) {
																	sID = slist.get(i).getId();
																	sname = slist.get(i).getState();
															%>

															<option value="<%=sID%>"><%=sname%></option>
															<%
																}
															%>
													</select> <input name="state" type="hidden" id="state"
														value="<%=chStr.toChinese("test")%>">*</td>
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
