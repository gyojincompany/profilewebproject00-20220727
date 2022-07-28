<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/header.css">
<title>header</title>
</head>
<body>
	<table width="100%" cellspacing="0" border="0" cellpadding="0">
		<tr height="50" bgcolor="#000042">
			<td width="30%">&nbsp;</td>
			<td class="header_menu" width="5%">
				<a href="index">HOME</a>	
			</td>
			<td class="header_menu" width="5%">
				<%				
					String sessionId = (String) session.getAttribute("sid");
					if(sessionId == null) {
				%>
				<a href="login">LOGIN</a>
				<%				
					} else {
				%>
				<a href="logout">LOOUT</a>
				<%
					}
				%>
			</td>
			<td class="header_menu" width="5%">
				<%					
					if(sessionId == null) {
				%>
				<a href="join">JOIN</a>
				<%				
					} else {
				%>
				<a href="infoModify">MODIFY</a>
				<%
					}
				%>
			</td>
			<td class="header_menu" width="6%">
				<a href="profile">PROFILE</a>
			</td>
			<td class="header_menu" width="7%">
				<a href="question">QUESTION</a>
			</td>
			<td class="header_menu" width="6%">
				<a href="contact">CONTACT</a>
			</td>
			<td width="30%">&nbsp;</td>
		</tr>
		<tr height="40">
			<td>&nbsp;</td>
		</tr>	
	</table>
</body>
</html>