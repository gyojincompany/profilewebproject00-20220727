<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/titletext.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/join.js"></script>
<meta charset="UTF-8">
<title>**Profile Web</title>
</head>
<body>
	<%@ include file="include/header.jsp" %>
	<center>
	<table width="75%" cellspacing="0" border="0" cellpadding="20">
		<tr>
			<td align="center">
				<span class="index_title01">DEVELOPER GYOJIN'S PROFILE</span>
			</td>
		</tr>
		<tr>
			<td align="center">
				<span class="index_title02">I'm Gyojin Lee, a developer who wants a development job. Please call me back.</span>
			</td>
		</tr>
		<tr>
			<table width="70%" cellspacing="0" border="0" cellpadding="10">
				<tr height="534">
					<td bgcolor="#4375DB" align="center">
						<table border="0" cellspacing="0" cellpadding="10">
							<form action="infoModifyOk" method="post" name="join_form">
								<tr>
									<td><span class="content_text">MEMBER ID : </span></td>
									<td><input class="input_box" type="text" name="mid" value="${memberDto.mid }" readonly></td>
								</tr>
								<tr>
									<td><span class="content_text">PASSWORD : </span></td>
									<td><input class="input_box" type="password" name="mpw" value="${memberDto.mpw }"></td>
								</tr>
								<tr>
									<td><span class="content_text">PW CHECK : </span></td>
									<td><input class="input_box" type="password" name="mpw_check"></td>
								</tr>
								<tr>
									<td><span class="content_text">NAME : </span></td>
									<td><input class="input_box" type="text" name="mname" value="${memberDto.mname }"></td>
								</tr>
								<tr>
									<td><span class="content_text">EMAIL : </span></td>
									<td><input class="input_box" type="text" name="memail" value="${memberDto.memail }"></td>
								</tr>
								<tr>
									<td><span class="content_text">JOINDATE : </span></td>
									<td><input class="input_box" type="text" name="mdate" value="${memberDto.mdate }" readonly></td>
								</tr>
								<tr>
									<td colspan="2">
										<input class="button" type="button" value="MODIFY" onclick="joinCheck()">&nbsp;&nbsp;
										<input class="button" type="button" value="CANCEL" onclick="location.href='index'">
									</td>
								</tr>
							</form>						
						</table>
					</td>					
				</tr>				
			</table>		
		</tr>
	</table>
	</center>	
	<%@ include file="include/footer.jsp" %>
</body>
</html>