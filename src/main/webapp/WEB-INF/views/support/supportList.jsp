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
<link href="${conPath }/css/frame.css" rel="stylesheet">
<link href="${conPath }/css/support/supportList.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Rubik" rel="stylesheet">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="${conPath }/js/frame.js"></script>
	
	<!-- 이하 해당 페이지 고유의 스크립트 및 CSS 영역 -->
	<script>
	function trClicked(supportCode) {
		location.href = 'support.do?method=supportDetail&supportCode=' + supportCode
				+ '&pageNum=${paging.currentPage}';
	}
	</script>
</head>
<body>
   <jsp:include page="../main/header.jsp"/>
   <jsp:include page="../main/remote.jsp"/>
   
   <!-- [은실] frame.css 공통 적용하려고 id 이름 조정 -->
   <div id="section">
   	  <div id="headerTopic">SUPPORT CENTER</div>
      <div id="contentArea">
      	 <div id="topic"></div>
         <div id="content">
		<c:set var="num" value="${paging.total - paging.startRow + 1 }"/>
		<table>
			<caption>무엇을 도와드릴까요?</caption>
			
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
				<c:if test="${not empty guest.guestId }">
				<td colspan="5" align="right"><a href="${conPath }/support.do?method=supportWriteView">문의 등록하기</a></td>
				</c:if>
				<c:if test="${empty guest.guestId }">
				<td colspan="5" align="right"><a href="${conPath }/guest.do?method=loginForm">로그인을 하셔야 글을 쓰실수 있습니다</a></td>
				</c:if>
			</tr>
		</table>
		<br><br>
		<div id="page">
			<c:if test="${paging.startPage>paging.blockSize }">
				[ <a href="${conPath }/support.do?method=supportList&pageNum=${paging.startPage-1}">이전</a> ]
			</c:if>
			<c:forEach var="i" begin="${paging.startPage }"
				end="${paging.endPage }">
				<c:if test="${paging.currentPage==i }">
					[ <b> ${i }</b> ]
				</c:if>
				<c:if test="${paging.currentPage!=i }">
					[ <a href="${conPath }/support.do?method=supportList&pageNum=${i}"> ${i }</a> ]
				</c:if>
			</c:forEach>
			<c:if test="${paging.endPage<paging.pageCnt }">
				[ <a href="${conPath }/support.do?method=supportList&pageNum=${paging.endPage+1}">다음</a> ]
			</c:if>
		</div>
	</div><!-- #content 끝 -->
         
      </div><!-- #contentArea 끝 -->
      
      
      <div id="illustArea">
	      <div id="phrase">
   		      <img src="${conPath }/img/phrase.png" alt="illust"/>
   	 	  </div>
   	  </div>
        
   </div>
 <jsp:include page="../main/footer.jsp"/>
</body>
</html>