<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="conPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<form action="${conPath }/guest.do?method=withdraw" method="POST">
		<input type="hidden" name="guestId" value="${guestId }">
		<table>
		<tr>
			<td>회원탈퇴하시겠습니까?</td>
			<td>회원탈퇴를 하시면 더이상 해당 아이디로는 로그인이 불가능하며 재가입이 불가능 합니다.</td>
		</tr>
		<tr>
			<td><input type="submit" value="탈퇴"></td>
			<td><input type="button" value="취소" onclick="location.href='${conPath}/guest.do?method=myPage'"></td>
		</tr>
		</table>
	</form>
</body>
</html>