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
<link href="${conPath }/css/style.css" rel="stylesheet">
<style>
	#content {
		width: 800px; height:350px;
		margin: 50px auto;
	}
</style>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<body>
	<jsp:include page="../main/header.jsp"/>
	<jsp:include page="../main/remote.jsp"/>
	<div id="content">
	<form action="${conPath }/event.do" method="post"  enctype="multipart/form-data">
		<input type="hidden" name="method" value="eventModify">
		<input type="hidden" name="eventNum" value="${eventDetail.eventNum }">
		<table>
			<caption>${eventDetail.eventTitle } 수정하기</caption>
			<tr><td>이벤트 제목</td><td><input type="text" name="eventTitle" value="${eventDetail.eventTitle }"></td></tr>
			<tr><td>Banner 수정</td><td><input type="file" name="eventBanner">${eventDetail.eventBanner }</td></tr>
			<tr><td>이벤트 설명 페이지 첨부 1page 수정</td><td><input type="file" name="eventImg1">${eventDetail.eventImg1 }</td></tr>
			<tr><td>이벤트 설명 페이지 첨부 2page 수정</td><td><input type="file" name="eventImg2">${eventDetail.eventImg2 }</td></tr>
			<tr><td>이벤트 설명 페이지 첨부 3page 수정</td><td><input type="file" name="eventImg3">${eventDetail.eventImg3 }</td></tr>
			<tr><td>이벤트 상세설명 수정</td><td><textarea rows="5" cols="20" name="eventInfo">${eventDetail.eventInfo}</textarea></td></tr>
			<tr><td>이벤트 상태</td><td><input type="radio" value="1" name="eventStatus" checked="checked">진행중 <input type="radio" value="0" name="eventStatus">완료</td>
			<tr><td colspan="2">
				<input type="button" value="목록" onclick="location='event.do?method=eventList&pageNum=${param.pageNum}'">
				<input type="reset" value="초기화">
				<input type="submit" value="이벤트 수정 완료">
		</table>
	</form>
	</div>
	<jsp:include page="../main/footer.jsp"/>
</body>
</html>