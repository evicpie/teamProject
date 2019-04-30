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
<link href="${conPath }/css/event/eventDelete.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<!-- jquery-ui 이용한 캘런더api -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<body>
	<jsp:include page="../main/header.jsp"/>
	<jsp:include page="../main/remote.jsp"/>
	<div id="content">
	<form action="${conPath }/event.do">
		<input type="hidden" name="method" value="eventDelete">
		<input type="hidden" name="pageNum" value="${param.pageNum }">
		<input type="hidden" name="eventNum" value="${eventDelete.eventNum }">
		<table id="form">
			<tr><th>${eventDelete.eventTitle }, 해당 이벤트를 정말로 삭제하시겠습니까?</th></tr>
			<tr><td><img src="${conPath }/eventImgFileUpload/${eventDelete.eventBanner }" id="banner"></td></tr>
			<tr><td colspan="2" id="buttons">
				<input type="button" value="목록" class="button" onclick="location='event.do?method=eventList&pageNum=${param.pageNum}'">
				<input type="submit" value="삭제하기" class="button">
		</table>
	</form>
	</div>
	<jsp:include page="../main/footer.jsp"/>
</body>
</html>