<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ page import="xrdsw.library.domain.Users"%>
<%@ page import="xrdsw.library.domain.Book"%>
<%@ page import="xrdsw.library.dao.BookDao"%>
<%@ page import="xrdsw.library.dao.UsersDao"%>
<%@ page import="xrdsw.library.domain.Borrow"%>
<%@ page import="xrdsw.library.dao.BorrowDao"%>>
<%@ page import="xrdsw.library.log.LogOut"%>
<%@ page import="java.util.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%
	Boolean ToF = false;
	List<Borrow> brlist = new BorrowDao().sall();
%>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="JS/onclock.JS"></script>

<head>
<title>高校图书馆管理系统</title>
<link href="CSS/style.css" rel="stylesheet">
<%@include file="/WEB-INF/comjsp/banner.jsp"%>
<%@include file="/WEB-INF/comjsp/commenu.jsp"%>
<script>
	<%Boolean isoutime = new UsersDao().sUserP(user.getName(), user.getPwd());
			new LogOut().myprint("username:" + user.getName() + "|" + "isoutime:" + isoutime);
			if (!isoutime) {%>
			alert("您有图书以超期。请尽快处理!");
		<%}%>
	</script>
</head>
<body onLoad="clockon(bgclock)">

	<table width="778" height="510" border="0" align="center"
		cellpadding="0" cellspacing="0" bgcolor="#FFFFFF"
		class="tableBorder_gray">
		<tr>
			<td align="center" valign="top" style="padding:5px;">
				<table width="100%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td height="20" align="right" valign="middle" class="word_orange">当前位置：首页
							&gt;&gt;&gt;&nbsp;</td>
					</tr>
					<tr>
						<td valign="top"><table width="100%" border="0"
								cellspacing="0" cellpadding="0">
								<tr>
									<td height="57" background="Images/recent_borroe_history.gif">&nbsp;</td>
								</tr>
								<tr>
									<td align="center" valign="top">
										<%
											int ID = 0;
											int n = 0;
											int bsum = 0;
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
											int bookid = 0;
											Book books = new Book();
											Borrow borrows = new Borrow();
											BookDao bdao = new BookDao();
										%>
										<table width="95%" border="1" cellpadding="0" cellspacing="0"
											bordercolor="#FFFFFF" bordercolordark="#F6B83B"
											bordercolorlight="#FFFFFF">
											<tr align="center" bgcolor="#e3F4F7">
												<td width="5%" height="25">排名</td>
												<td width="10%">图书编码</td>
												<td width="20%">图书名称</td>
												<td width="10%">图书分类</td>
												<td width="14%">关键字</td>
												<td width="14%">出版社</td>
												<td width="11%">作者</td>
												<td>ISBN</td>
												<td>借阅次数</td>
											</tr>
											<%
												for (int i = 0; i < brlist.size(); i++) {
													n++;
													borrows = brlist.get(i);
													ID = borrows.getId();
													bsum = borrows.getBorrowsum();
													bookid = borrows.getBookid();

													books = bdao.sBookById(bookid);
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

													//	System.out.print(bookid + "|" + bookcode + "\n");
											%>
											<tr>
												<td align="center" style="padding:5px;"><%=n%></td>
												<td align="center" style="padding:5px;"><%=bookcode%></td>
												<td align="center" style="padding:5px;"><a
													href="${pageContext.request.contextPath}/mytest"><%=bookname%></a></td>
												<td align="center"><%=bookcase%></td>
												<td align="center"><%=keywords%></td>
												<td align="center"><%=company%></td>
												<td align="center"><%=auther%></td>
												<td align="center"><%=isbn%></td>
												<td align="center"><%=bsum%></td>
											</tr>
											<%
												}
											%>
										</table>
									</td>
								</tr>
							</table></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>

	<%@ include file="/WEB-INF/comjsp/copyright.jsp"%>
</body>
</html>
