<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="conPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="${conPath }/css/style.css" rel="stylesheet">
 <title>jQuery UI Tabs - Default functionality</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#tabs" ).tabs();
  } );
  </script>
</head>
<body>
 <c:if test="${not empty result}">
		<script>alert('${result}');</script>
	</c:if>
	<jsp:include page="../main/header.jsp"/>
	
<div id="tabs">
  <ul>
    <li><a href="#tabs-1">게스트 로그인</a></li>
    <li><a href="#tabs-2">호스트 로그인</a></li>
  </ul>
  <div id="tabs-1">
		<div id="content">
		<form action="${conPath }/guest.do">
			<input type="hidden" name="method" value="login">
			<table>
				<caption>로그인 화면</caption>
				<tr><th>아이디</th><td><input type="text" name="guestId" required="required" value="${guestId }"></td></tr>
				<tr><th>비밀번호</th><td><input type="password" name="guestPw" required="required" value="${guestPw }"></td></tr>
				<tr><td colspan="2">
					<input type="submit" value="로그인">
				</td></tr>
			</table>
		</form>
		</div>
  </div>
  <div id="tabs-2">
	    <div id="content">
			<form action="${conPath }/host.do">
				<input type="hidden" name="method" value="login">
				<table>
					<caption>로그인 화면</caption>
					<tr><th>호스트 아이디</th><td><input type="text" name="hostId" required="required" value="${hostId }"></td></tr>
					<tr><th>호스트 비밀번호</th><td><input type="password" name="hostPw" required="required" value="${hostPw }"></td></tr>
					<tr><td colspan="2">
						<input type="submit" value="로그인">
					</td></tr>
				</table>
			</form>
		</div>
  </div>
</div>
	<jsp:include page="../main/footer.jsp"/>
</body>
</html>