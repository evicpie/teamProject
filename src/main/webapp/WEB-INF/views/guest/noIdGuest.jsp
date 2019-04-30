<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="conPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="${conPath }/css/guest/findForm.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Rubik" rel="stylesheet">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<style>
	#content {
		width: 800px; height:350px;
		margin: 50px auto;
	}
</style>
</head>
<body>
	<jsp:include page="../main/header.jsp"/>
	<div id="content">
		<table id="form">
			<tr><th>아이디 찾기</th></tr>
			<tr><td class="findNotice">회원정보가 없습니다</td></tr>
			<tr><td id="buttonForm"><button onclick="location.href='${conPath }/guest.do?method=loginForm'">로그인</button>
			<button onclick="location.href='${conPath }/guest.do?method=findIdForm'">아이디찾기</button>
			<button onclick="location.href='${conPath }/guest.do?method=findPwForm'">비밀번호찾기</button>
			</td></tr>
		</table>
	</div>
	<jsp:include page="../main/footer.jsp"/>
</body>
</html>