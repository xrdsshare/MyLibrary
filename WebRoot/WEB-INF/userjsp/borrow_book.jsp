<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ page import="xrdsw.library.domain.Users"%>
<%@ page import="xrdsw.library.dao.UsersDao"%>
<%@ page import="xrdsw.library.domain.Book"%>
<%@ page import="xrdsw.library.dao.BookDao"%>
<%@ page import="xrdsw.library.domain.Borrow"%>
<%@ page import="xrdsw.library.dao.BorrowDao"%>
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

	<%
		String select = (String) request.getAttribute("select");
		String val = (String) request.getAttribute("val");
		List<Book> blist = new ArrayList<Book>();
		Boolean isoutime = new UsersDao().sUserP(user.getName(), user.getPwd());

		if (select == "bookname" || "bookname".equals(select)) {
			blist = new BookDao().sBByBN(val);
			System.out.println(":" + select + "|" + "值：" + val + "\n");
		} else if (select == "bookcode" || "bookcode".equals(select)) {
			blist = new BookDao().sBByBC(val);
		} else if (select == "keywords" || "keywords".equals(select)) {
			blist = new BookDao().sBByKW(val);
		}
	%>
	<table width="778" height="510" border="0" align="center"
		cellpadding="0" cellspacing="0" bgcolor="#FFFFFF"
		class="tableBorder_gray">
		<tr>
			<td align="center" valign="top" style="padding:5px;">
				<table width="100%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td height="20" align="right" valign="middle" class="word_orange">当前位置：个人借阅
							&gt; 图书借阅 &gt;&gt;&gt;</td>
					</tr>
					<tr>
						<td valign="top"><table width="100%" border="0"
								cellspacing="0" cellpadding="0">
								<tr>
									<td height="57" background="Images/borrow_book.gif">&nbsp;</td>
								</tr>
								<tr>
									<td align="center" valign="top">
										<form name="select" method="post"
											action="${pageContext.request.contextPath}/borrow?actval=borrow">
											<table width="98%" height="57" border="0" cellpadding="0"
												cellspacing="0" bgcolor="#E3F4F7" class="tableBorder_gray">
												<%
													if (isoutime) {
												%>
												<tr>
													<td rowspan="2" align="center" bgcolor="#F9D16B">&nbsp;<img
														src="Images/search.gif" width="45" height="28"></td>
													<td height="29" bgcolor="#F9D16B">请选择查询依据： <select
														name="select" class="wenbenkuang" id="f">
															<option value="bookname">图书名称</option>
															<option value="bookcode">图书编码</option>
															<option value="keywords">关键字</option>
													</select> <input name="val" type="text" id="val" size="50">
														<input name="Submit" type="submit" class="btn_grey"
														value="查询" onClick="return check(myform)"></td>
												</tr>
												<%
													}
												%>
											</table>
										</form>

										<table width="98%" border="1" cellpadding="0" cellspacing="0"
											bordercolor="#FFFFFF" bordercolordark="#F6B83B"
											bordercolorlight="#FFFFFF">
											<tr align="center" bgcolor="#e3F4F7">
												<td width="15%" bgcolor="#F9D16B">图书编码</td>
												<td width="20%" bgcolor="#F9D16B">图书名称</td>
												<td width="15%" bgcolor="#F9D16B">出版社</td>
												<td width="10%" bgcolor="#F9D16B">作者</td>
												<td width="10%" bgcolor="#F9D16B">ISBN</td>
												<td width="10%" bgcolor="#F9D16B">出版时间</td>
												<td bgcolor="#F9D16B">流通状态</td>
												<td width="10%" bgcolor="#F9D16B">预约</td>
											</tr>
											<%
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
												Date borrowtime = null;//借书日期
												Date plantime = null;//应还日期
												int ifback = 0;//是否
												Book books = new Book();
											%>
											<%
												for (int i = 0; i < blist.size(); i++) {
													books = blist.get(i);
													state = books.getState();//流通状态
													if (!"图书已借".equals(state) || !"已被预约".equals(state)) {
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
											%>
											<tr>
												<td align="center" style="padding:5px;"><%=bookcode%></td>
												<td align="center" style="padding:5px;"><a
													href="${pageContext.request.contextPath}/mytest"><%=bookname%></a></td>
												<td align="center"><%=company%></td>
												<td align="center"><%=auther%></td>
												<td align="center"><%=isbn%></td>
												<td align="center"><%=booktime%></td>
												<td align="center"><%=state%></td>
												<td align="center"><a
													href="${pageContext.request.contextPath}/mytest">预约</a></td>
											</tr>
											<%
												}
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
