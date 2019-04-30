<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="conPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	*{	padding:0;
		margin:0;}
	header a{text-decoration: none;}
	header li{list-style: none;}
	
	#gnb{
		float:right;
		overflow:hidden;
	border: 1px solid red;}
	#gnb li{
		margin:10px;
		float:left;
	border: 1ps solid blue;	}
</style>
</head>
<body>
<header>
	<div id="gnb">
	<c:if test="${empty guest}">
		<ul>
			<li><a href="${conPath }/guest.do?method=loginForm">로그인</a></li>
			<li><a href="${conPath }/guest.do?method=joinForm">회원가입</a></li>		
		</ul>
	</c:if>
	<c:if test="${not empty guest}">
		<ul>
			<li><a>${guest.guestName }님</a></li>
			<li><a href="${conPath }/guest.do?method=modifyForm">정보수정</a></li>
			<li><a href="${conPath }/guest.do?method=logout">로그아웃</a></li>		
		</ul>
	</c:if>
	</div>
	<div class="logo" onclick="location.href='${conPath}/main.do'">
		LOGO
	</div>
</header>
</body>
</html>