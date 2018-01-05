<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ page import="xrdsw.library.domain.Users"%>
<%@ page import="xrdsw.library.domain.Book"%>
<%@ page import="xrdsw.library.dao.BookDao"%>
<%@ page import="java.util.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%
	BookDao bookdao = new BookDao();
	List<Book> list = bookdao.sBook();
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
							class="word_orange">当前位置：图书管理 &gt; 图书档案 &gt;&gt;&gt;</td>
					</tr>
					<tr>
						<td align="center" valign="top">
							<%
								if (list == null || list.isEmpty()) {
							%>
							<table width="100%" height="30" border="0" cellpadding="0"
								cellspacing="0">
								<tr>
									<td height="36" align="center">暂无图书信息！</td>
								</tr>
							</table>
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td><a href="${pageContext.request.contextPath}/bookadd">添加图书信息</a></td>
								</tr>
							</table> <%
 	} else {
 		//通过迭代方式显示数据
 		int ID = 0;
 		String bookcode = "";//图书编码
 		String isbn = "";//isbn号码
 		String seekcode = "";//索书号
 		String bookname = "";//图书名称
 		String auther = "";//作者
 		String company = "";//出版社
 		String price = "";//价格
 		String keywords = "";//关键字
 		int amount = 0;//副本数
 		String bookcase = "";//图书分类
 		Date booktime = null;//出版日期
 		String state = "";//流通状态
 %>
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td width="87%">&nbsp;</td>
									<td width="13%"><a href="${pageContext.request.contextPath}/bookadd">添加图书信息</a></td>
								</tr>
							</table>
							<table width="95%" border="1" cellpadding="0" cellspacing="0"
								bordercolor="#FFFFFF" bordercolordark="#F6B83B"
								bordercolorlight="#FFFFFF">
								<tr align="center" bgcolor="#e3F4F7">
									<td width="12%" bgcolor="#F9D16B">图书名称</td>
									<td width="9%" bgcolor="#F9D16B">图书编码</td>
									<td width="6%" bgcolor="#F9D16B">ISBN</td>
									<td width="12%" bgcolor="#F9D16B">索书号</td>
									<td width="5%" bgcolor="#F9D16B">作者</td>
									<td width="10%" bgcolor="#F9D16B">出版社</td>
									<td width="5%" bgcolor="#F9D16B">价格</td>
									<td width="9%" bgcolor="#F9D16B">关键字</td>
									<td width="7%" bgcolor="#F9D16B">副本数</td>
									<td width="5%" bgcolor="#F9D16B">图书分类</td>
									<td width="5%" bgcolor="#F9D16B">出版日期</td>
									<td width="5%" bgcolor="#F9D16B">流通状态</td>
									<td width="5%" bgcolor="#F9D16B">修改</td>
									<td width="5%" bgcolor="#F9D16B">删除</td>
								</tr>
								<%
									Book books = new Book();
										for (int i = 0; i < list.size(); i++) {
											books = list.get(i);
											ID = books.getId();
											bookname = books.getBookname();//图书名称
											bookcode = books.getBookcode();//图书编码
											isbn = books.getIsbn();//isbn号码
											seekcode = books.getSeekcode();//索书号
											auther = books.getAuther();//作者
											company = books.getCompany();//出版社
											price = books.getPrice();//价格
											keywords = books.getKeywords();//关键字
											amount = books.getAmount();//副本数
											bookcase = books.getBookcase();//图书分类
											booktime = books.getBooktime();//出版日期
											state = books.getState();//流通状态
								%>
								<tr>
									<td align="center" style="padding:5px;"><a
										href="Book?action=readerDetail&ID=<%=ID%>"><%=bookname%></a></td>
									<td align="center" style="padding:5px;"><%=bookcode%></td>
									<td align="center" style="padding:5px;"><%=isbn%></td>
									<td align="center"><%=seekcode%></td>
									<td align="center"><%=auther%></td>
									<td align="center"><%=company%></td>
									<td align="center"><%=price%></td>
									<td align="center"><%=keywords%></td>
									<td align="center"><%=amount%></td>
									<td align="center"><%=bookcase%></td>
									<td align="center"><%=booktime%></td>
									<td align="center"><%=state%></td>
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
