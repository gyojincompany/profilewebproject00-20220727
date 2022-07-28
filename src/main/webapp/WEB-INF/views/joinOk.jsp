<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/titletext.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
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
						
						<%--
							int checkId = Integer.parseInt(request.getAttribute("checkId").toString());
							//컨트롤러에서 보내준 model값 추출
							if(checkId == 0) {
						--%>
						<c:choose>
							<c:when test="${checkId == '0'}"> 
							<span class="content_text">
								${mname }님 회원가입을 축하드립니다.<br>
								가입하신 아이디는 ${mid }입니다.<br>														
							</span>
							</c:when>
							<%--
								} else {
							--%>
							<c:otherwise>
							<script type="text/javascript">
								alert("가입하시려는 아이디는 이미 사용중입니다! 다른 아이디를 입력하세요.");//경고창 띄우기
								history.go(-1);//이전페이지로 돌려보냄
							</script>
							</c:otherwise>
						</c:choose>
						<%--
							}
						--%>
						
					</td>					
				</tr>				
			</table>		
		</tr>
	</table>
	</center>	
	<%@ include file="include/footer.jsp" %>
</body>
</html>