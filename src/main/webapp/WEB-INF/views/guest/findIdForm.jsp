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
	<c:if test="${not empty result}">
		<script>alert('${result}');</script>
	</c:if>
	<jsp:include page="../main/header.jsp"/>
	<div id="content">
	<form action="${conPath }/guest.do">
		<input type="hidden" name="method" value="findId">
		<table id="form">
			<tr><th colspan="2">아이디찾기</th></tr>
			<tr><td colspan="2">회원정보에 등록한 휴대전화로 찾기 </td></tr>
			<tr><th>이 름</th><td><input type="text" name="guestName" required="required"></td></tr>
			<tr><th>연 락 처</th><td><input type="number"  class="phone" name="tempPhone1" required="required">
				- <input type="text" class="phone" name="tempPhone2" required="required">
				- <input type="text" class="phone" name="tempPhone3" required="required">
			</td></tr>
			<tr><td colspan="2" id="buttonForm">
				<input type="submit" value="확인" id="button">
			</td></tr>
		</table>
	</form>
	</div>
	<jsp:include page="../main/footer.jsp"/>
</body>
</html>