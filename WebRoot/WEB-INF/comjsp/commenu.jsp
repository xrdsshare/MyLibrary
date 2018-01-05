<%@page import="org.apache.struts2.components.Else"%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="xrdsw.library.domain.Users"%>
<%
	//
	Users muser = (Users) session.getAttribute("user");
	String type = muser.getUserpower();
//	System.out.print("++++++++++++++++++++++++++++++++++++++++" + "\n" + type + "\n");
	int usertype = 100;
	if (type.equals("admin")) {
		usertype = 0;
	} else if (type.equals("user")) {
		usertype = 1;
	} else {
		usertype = 1;
	}
%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="JS/onclock.JS"></script>
<script src="JS/menu.JS"></script>
<div class=menuskin id=popmenu
	onmouseover="clearhidemenu();highlightmenu(event,'on')"
	onmouseout="highlightmenu(event,'off');dynamichide(event)"
	style="Z-index:100;position:absolute;"></div>
<table width="778" border="0" align="center" cellpadding="0"
	cellspacing="0" bgcolor="#FFFFFF">
	<tr bgcolor="#DFA40C">
		<td width="3%" height="27">&nbsp;</td>
		<td width="34%"><div id="bgclock" class="word_white"></div></td>
		<script language="javascript">
			function quit() {
				if (confirm("真的要退出系统吗?")) {
					window.location.href = "${pageContext.request.contextPath}/logout";
				}
			}
		</script>
		<td width="57%" align="right" bgcolor="#B0690B" class="word_white">
			<%
				if (usertype == 0) {
			%> <a
			href="${pageContext.request.contextPath}/admin" class="word_white">首页</a>
			<%
				} else {
			%> <a href="${pageContext.request.contextPath}/user"
			class="word_white">首页</a>
			<%
				}
			%> &nbsp;|&nbsp;<%
 	if (usertype == 0) {
 %><a onmouseover=showmenu(event,libmenu) onmouseout=delayhidemenu()
			class="word_white" style="CURSOR:hand">图书管理</a>&nbsp;|&nbsp;<%
 	} else {
 %> <a href="${pageContext.request.contextPath}/newbook"
			class="word_white">新书推荐</a>&nbsp;|&nbsp;<%
 	}
 %> <%
 	if (usertype == 0) {
 %><a onmouseover=showmenu(event,usersmenu) onmouseout=delayhidemenu()
			style="CURSOR:hand" class="word_white">用户管理</a>&nbsp;|&nbsp;<%
 	} else {
 %> <a onmouseover=showmenu(event,bromenu) onmouseout=delayhidemenu()
			class="word_white" style="CURSOR:hand">借阅处理</a>&nbsp;|&nbsp;<%
 	}
 %> <%
 	if (usertype == 0) {
 %><a onmouseover=showmenu(event,sysmenu) onmouseout=delayhidemenu()
			style="CURSOR:hand" class="word_white">系统设置</a>&nbsp;|&nbsp;<%
 	} else {
 %> <a onmouseover=showmenu(event,mymenu) onmouseout=delayhidemenu()
			style="CURSOR:hand" class="word_white">个人借阅</a>&nbsp;|&nbsp;<%
 	}
 %> <%
 	if (usertype == 0) {
 %><a onmouseover=showmenu(event,adminmenu) onmouseout=delayhidemenu()
			class="word_white" style="CURSOR:hand">个人中心</a>&nbsp;|&nbsp;<%
 	} else {
 %> <a onmouseover=showmenu(event,usermenu) onmouseout=delayhidemenu()
			class="word_white" style="CURSOR:hand">个人中心</a>&nbsp;|&nbsp;<%
 	}
 %> <a href="#" onClick="quit()" class="word_white">退出登录</a>&nbsp;
		</td>
		<td width="2%" bgcolor="#B0690B">&nbsp;</td>
	</tr>
	<tr bgcolor="#DFA40C">
		<td height="9" colspan="4"
			background="Images/navigation_bg_bottom.gif"></td>
	</tr>
</table>
