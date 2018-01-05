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
	String name = "";
	String sex = "";
	String barcode = "";
	String birthday = "";
	String paperType = "";
	String paperNO = "";
	int number = 0;
	String typename = "";
	/*		if (readerForm != null) {
				ID = readerForm.getId().intValue();
				name = chStr.toChinese(readerForm.getName());
				sex = chStr.toChinese(readerForm.getSex());
				barcode = readerForm.getBarcode();
				birthday = readerForm.getBirthday();
				paperType = chStr.toChinese(readerForm.getPaperType());
				paperNO = readerForm.getPaperNO();
				number = readerForm.getNumber();
				typename = chStr.toChinese(readerForm.getTypename());
			}*/
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
							class="word_orange">当前位置：首页&gt;&gt;&gt;</td>
					</tr>
					
					<!-- 读者信息 -->
					<tr>
						<td align="center" valign="top" style="padding:5px;">
							<form name="form1" method="post"
								action="borrow.do?action=bookborrow">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td height="47" background="Images/userBackRenew.gif">&nbsp;</td>
									</tr>
									<tr>
										<td height="72" align="center" valign="top"
											background="Images/main_booksort_1.gif" bgcolor="#F8BF73"><table
												width="96%" border="0" cellpadding="1" cellspacing="0"
												bordercolor="#FFFFFF" bgcolor="#F8BF73">
												<tr>
													<td valign="top" bgcolor="#F8BF73">
														<table width="100%" border="0" cellpadding="0"
															cellspacing="0" bgcolor="#FFFFFF">
															<tr>
																<td><table width="90%" height="27" border="0"
																		cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="24%" height="18"
																				style="padding-left:7px;padding-top:7px;"><img
																				src="Images/reader_checkbg.jpg" width="142"
																				height="18"></td>
																			<td width="76%" style="padding-top:7px;">用户证件号：
																				<input name="barcode" type="text" id="barcode"
																				value="<%=barcode%>" size="24"> &nbsp; <input
																				name="Button" type="button" class="btn_grey"
																				value="确定" onClick="checkreader(form1)">
																			</td>
																		</tr>
																	</table></td>
															</tr>
															<tr>
																<td height="13" align="left" style="padding-left:7px;"><hr
																		width="90%" size="1"></td>
															</tr>
															<tr>
																<td align="center"><table width="96%" border="0"
																		cellpadding="0" cellspacing="0">
																		<tr>
																			<td height="27">姓&nbsp;&nbsp;&nbsp;&nbsp;名： <input
																				name="readername" type="text" id="readername"
																				value="<%=name%>"></td>
																			<td height="27">性&nbsp;&nbsp;&nbsp;&nbsp;别： <input
																				name="sex" type="text" id="sex" value="<%=sex%>"></td>
																			<td height="27">用户类型： <input name="readerType"
																				type="text" id="readerType" value="<%=typename%>"></td>
																		</tr>
																		<tr>
																			<td height="27">学&nbsp;&nbsp;&nbsp;&nbsp;院： <input
																				name="paperType" type="text" id="paperType"
																				value="<%=paperType%>"></td>
																			<td height="27">专&nbsp;&nbsp;&nbsp;&nbsp;业： <input
																				name="paperNo" type="text" id="paperNo"
																				value="<%=paperNO%>"></td>
																			<td height="27">超期数量： <input name="number"
																				type="text" id="number" value="<%=number%>"
																				size="17"> 本 &nbsp;
																			</td>
																		</tr>
																	</table></td>
															</tr>
														</table>
													</td>
												</tr>
											</table></td>
									</tr>
									<tr>
										<td height="10" background="Images/main_booksort_2.gif">&nbsp;</td>
									</tr>
								</table>
							</form>
						</td>
					</tr>

					<!-- 图书借阅 -->
					<tr>
						<td align="center" valign="top" style="padding:5px;">
							<form name="form1" method="post"
								action="borrow.do?action=bookborrow">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td height="47" background="Images/borrowBackRenew.gif">&nbsp;</td>
									</tr>
							 		<tr>
										<td height="72" align="center" valign="top"
											background="Images/main_booksort_1.gif" bgcolor="#F8BF73"><table
												width="96%" border="0" cellpadding="1" cellspacing="0"
												bordercolor="#FFFFFF" bgcolor="#F8BF73">
												<tr>
													<td valign="top" bgcolor="#F8BF73">
														<table width="100%" border="0" cellpadding="0"
															cellspacing="0" bgcolor="#FFFFFF">
															<tr>
																<td><table width="90%" height="21" border="0"
																		cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="24%" height="18"
																				style="padding-left:7px;padding-top:7px;"><img
																				src="Images/book_checkbg.jpg" width="142"
																				height="18"></td>
																			<td width="76%" style="padding-top:7px;">图书编码： <input
																				name="barcode" type="text" id="barcode"
																				value="<%=barcode%>" size="24"> &nbsp; <input
																				name="Button" type="button" class="btn_grey"
																				value="确定" onClick="checkreader(form1)">
																			</td>
																		</tr>
																	</table></td>
															</tr>
															<tr>
																<td height="13" align="left" style="padding-left:7px;"><hr
																		width="90%" size="1"></td>
															</tr>
															<tr>
																<td align="center"><table width="96%" border="0"
																		cellpadding="0" cellspacing="0">
																		<tr>
																			<td height="27">图书名称： <input name="readername"
																				type="text" id="readername" value="<%=name%>"></td>
																			<td height="27">图书类别： <input name="readername"
																				type="text" id="readername" value="<%=name%>"></td>
																			<td height="27">作&nbsp;&nbsp;&nbsp;&nbsp;者： <input
																				name="paperType" type="text" id="paperType"
																				value="<%=paperType%>"></td>
																		</tr>
																		<tr>
																			<td height="27">出版日期： <input name="paperNo"
																				type="text" id="paperNo" value="<%=paperNO%>"></td>
																			<td height="27">流通状态： <input name="paperNo"
																				type="text" id="paperNo" value="<%=paperNO%>"></td>
																			<td height="27">出版社： <input name="readername"
																				type="text" id="readername" value="<%=name%>"></td>
																		</tr>
																	</table></td>
															</tr>

														</table>
													</td>
												</tr>
											</table></td>
									</tr>
									<tr>
										<td height="10" background="Images/main_booksort_2.gif">&nbsp;</td>
									</tr>
								</table>
							</form>
						</td>
					</tr>

					<!-- 图书归还 -->
					<tr>
						<td align="center" valign="top" style="padding:5px;">
							<form name="form1" method="post"
								action="borrow.do?action=bookborrow">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td height="47" background="Images/borrowBackRenew_back.gif">&nbsp;</td>
									</tr>
									<tr>
										<td valign="top" align="center" background="Images/main_booksort_1.gif"><table width="96%" height="35"
												border="1" cellpadding="0" cellspacing="0"
												bordercolor="#FFFFFF" bordercolorlight="#FFFFFF"
												bordercolordark="#F6B83B" bgcolor="#FFFFFF">
												<tr align="center" bgcolor="#e3F4F7">
													<td width="30%" height="25" bgcolor="#FFF9D9">图书名称</td>
													<td width="22%" bgcolor="#FFF9D9">出版社</td>
													<td width="12%" bgcolor="#FFF9D9">作者</td>
													<td width="12%" bgcolor="#FFF9D9">借阅时间</td>
													<td width="12%" bgcolor="#FFF9D9">应还时间</td>
													<td width="12%" bgcolor="#FFF9D9">归还处理</td>
												</tr>
												<%
													int id = 0;
													String bookname = "";
													String borrowTime = "";
													String backTime = "";
													Float price = new Float(0);
													String pubname = "";
													String bookcase = "";
													/*			if (coll != null && !coll.isEmpty()) {
																	Iterator it = coll.iterator();
																	while (it.hasNext()) {
																		BorrowForm borrowForm = (BorrowForm) it.next();
																		id = borrowForm.getId().intValue();
																		bookname = chStr.toChinese(borrowForm.getBookName());
																		borrowTime = borrowForm.getBorrowTime();
																		backTime = borrowForm.getBackTime();
																		price = borrowForm.getPrice();
																		pubname = chStr.toChinese(borrowForm.getPubName());
																		bookcase = chStr.toChinese(borrowForm.getBookcaseName());*/
												%>
												<!-- 		<tr>
															<td height="25" style="padding:5px;">&nbsp;<%=bookname%></td>
															<td style="padding:5px;">&nbsp;<%=borrowTime%></td>
															<td style="padding:5px;">&nbsp;<%=backTime%></td>
															<td align="center">&nbsp;<%=pubname%></td>
															<td align="center">&nbsp;<%=bookcase%></td>
															<td width="13%" align="center">&nbsp;<%=price%></td>
															<td width="12%" align="center"><a
																href="borrow.do?action=bookback&barcode=<%=barcode%>&id=<%=id%>&operator=<%=chStr.toChinese("test")%>">归还</a>&nbsp;</td>
														</tr> -->
												<%
													//	}
													//	}
												%>
											</table></td>
									</tr>
									<tr>
										<td height="10" background="Images/main_booksort_2.gif">&nbsp;</td>
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
