<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="conPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<script>
	function trClicked(supportCode) {
		// 내부프레임을 벗어나 부모 창에서 열리도록 parent.document.location.href 추가
		parent.document.location.href = 'support.do?method=supportDetail&supportCode=' + supportCode
				+ '&pageNum=${paging.currentPage}';
	}
	</script>
	
	<link href="${conPath }/css/support/supportList.css" rel="stylesheet">
</head>
<body>
	<div id="content">
		<c:set var="num" value="${paging.total - paging.startRow + 1 }"/>
		<table id="mySupport">
			<caption>내가 쓴 문의글</caption>
			<tr class="line"><th>글 번호</th><th>글쓴이</th><th>글 제목</th><th>작성일</th><th>IP</th></tr>
			<c:forEach var="support" items="${list }">
				<tr onclick="trClicked('${support.supportCode }')">
					<td>${support.supportCode }</td>
					<td>
						<c:if test="${empty support.adminId }">${support.guestId }</c:if>
						<c:if test="${not empty support.adminId }">${support.adminId }</c:if>
					</td>
					<td>${support.supportTitle }</td>
					<td><fmt:formatDate value="${support.supportDate }" type="both" pattern="yyyy/MM/dd hh:mm"/></td>
					<td>${support.supportIp }</td>
				</tr>
				<c:set var="num" value="${num-1 }"/>
			</c:forEach>
			<tr class="lastLine">
				<td colspan="5">
					<c:if test="${paging.startPage>paging.blockSize }">
					[ <a href="${conPath }/support.do?method=mySupportList&guestId=${guest.guestId }&pageNum=${paging.startPage-1}">이전</a> ]
				</c:if>
				<c:forEach var="i" begin="${paging.startPage }"
					end="${paging.endPage }">
					<c:if test="${paging.currentPage==i }">
						[ <b> ${i }</b> ]
					</c:if>
					<c:if test="${paging.currentPage!=i }">
						[ <a href="${conPath }/support.do?method=mySupportList&guestId=${guest.guestId }&pageNum=${i}"> ${i }</a> ]
					</c:if>
				</c:forEach>
				<c:if test="${paging.endPage<paging.pageCnt }">
					[ <a href="${conPath }/support.do?method=mySupportList&guestId=${guest.guestId }&pageNum=${paging.endPage+1}">다음</a> ]
				</c:if>
				</td>
			</tr>
		</table>		
	</div>
</body>
</html>