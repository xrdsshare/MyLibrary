<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ page import="xrdsw.library.domain.Users"%>
<%@ page import="xrdsw.library.domain.BookLose"%>
<%@ page import="xrdsw.library.dao.BookLoseDao"%>
<%@ page import="java.util.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%
	BookLoseDao BookLosedao = new BookLoseDao();
	List<BookLose> list = BookLosedao.sBookLose();
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
							class="word_orange">当前位置：图书管理 &gt; 丢书列表 &gt;&gt;&gt;</td>
					</tr>
					<tr>
						<td align="center" valign="top">
							<%
								if (list == null || list.isEmpty()) {
							%>
							<table width="100%" height="30" border="0" cellpadding="0"
								cellspacing="0">
								<tr>
									<td height="36" align="center">暂无丢书记录！</td>
								</tr>
							</table> <%
 	} else {
 		//通过迭代方式显示数据
 		int ID = 0;
 		Date logtime = null;//丢书记录时间
 		String mngname = "";//记录者姓名
 		String isbn = "";//图书ISBN号
 		String bookname = "";//图书名称
 		String bookauther = "";//作者
 		String bookcom = "";//出版社
 		String userlosename = "";//丢书人姓名
 		String usercardcode = "";//丢书人证件号
 %>
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td width="87%">&nbsp;</td>
									<td width="13%"><a href="reader_add.jsp">添加丢书信息</a></td>
								</tr>
							</table>
							<table width="95%" border="1" cellpadding="0" cellspacing="0"
								bordercolor="#FFFFFF" bordercolordark="#F6B83B"
								bordercolorlight="#FFFFFF">
								<tr align="center" bgcolor="#e3F4F7">
									<td width="15%" bgcolor="#F9D16B">图书名称</td>
									<td width="8%" bgcolor="#F9D16B">ISBN</td>
									<td width="10%" bgcolor="#F9D16B">图书作者</td>
									<td width="12%" bgcolor="#F9D16B">出版社</td>
									<td width="10%" bgcolor="#F9D16B">记录时间</td>
									<td width="10%" bgcolor="#F9D16B">丢书人姓名</td>
									<td width="13%" bgcolor="#F9D16B">丢书人证件号</td>
									<td width="10%" bgcolor="#F9D16B">经手人</td>
									<td width="6%" bgcolor="#F9D16B">修改</td>
									<td width="6%" bgcolor="#F9D16B">删除</td>
								</tr>
								<%
									for (int i = 0; i < list.size(); i++) {
											BookLose blose = list.get(i);
											ID = blose.getId();
											bookname = blose.getBookname();
											isbn = blose.getIsbn();
											bookauther = blose.getBookauther();
											bookcom = blose.getBookcom();
											logtime = blose.getLogtime();
											userlosename = blose.getUsername();
											usercardcode = blose.getUsercardcode();
											mngname = blose.getMngname();
								%>
								<tr>
									<td align="center" style="padding:5px;"><%=bookname%></td>
									<td align="center" style="padding:5px;"><%=isbn%></td>
									<td align="center" style="padding:5px;"><%=bookauther%></td>
									<td align="center"><%=bookcom%></td>
									<td align="center"><%=logtime%></td>
									<td align="center"><%=userlosename%></td>
									<td align="center"><%=usercardcode%></td>
									<td align="center"><%=mngname%></td>
									<td align="center"><a
										href="reader.do?action=readerModifyQuery&ID=<%=ID%>">修改</a></td>
									<td align="center"><a
										href="reader.do?action=readerDel&ID=<%=ID%>">删除</a></td>
								</tr>
								<%
									}
									}
								%>
							</table>
						</td>
					</tr>
				</table> <%@ include file="/WEB-INF/comjsp/copyright.jsp"%></td>
		</tr>
	</table>
</body>
</html>
