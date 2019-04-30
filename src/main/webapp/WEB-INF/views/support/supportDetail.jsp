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
<link href="${conPath }/css/support/supportDetail.css" rel="stylesheet">
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
			<table>
				<caption>${supportDetail.supportCode }번 문의글</caption>
				<tr class="line"><th>제목</th><td colspan="5">${supportDetail.supportTitle }</td></tr>
				<tr>
					<th>글쓴이</th>
					<td>
						<c:if test="${empty supportDetail.adminId }">${supportDetail.guestId }</c:if>
						<c:if test="${not empty supportDetail.adminId }">${supportDetail.adminId }</c:if>
					</td>
					<th>작성일</th><td><fmt:formatDate value="${supportDetail.supportDate }" type="both" pattern="yyyy/MM/dd hh:mm"/></td>
					<th>작성자 IP</th><td>${supportDetail.supportIp }</td>
				</tr>
				<tr>
					<th>내용</th>
					<td colspan="5">${supportDetail.supportContent }</td>
				</tr>
				<tr>
					<th>첨부파일</th>
					<td colspan="5"><a href="${conPath}/supportFileUpload/${supportDetail.supportFile }">${supportDetail.supportFile }</a></td>
				</tr>
				<tr>
					<td colspan="6">
						<c:if test="${supportDetail.guestId == guest.guestId && empty supportDetail.adminId }">
							<button onclick="location='support.do?method=supportModifyView&supportCode=${supportDetail.supportCode }&pageNum=${param.pageNum }'">수정</button>
						</c:if>
						<c:if test="${supportDetail.guestId == guest.guestId || not empty admin.adminId }">
							<button onclick="location='support.do?method=supportDelete&supportCode=${supportDetail.supportCode }&pageNum=${param.pageNum }'">삭제</button>
						</c:if>
						<c:if test="${not empty admin.adminId }">
							<button onclick="location='support.do?method=supportReplyView&supportCode=${supportDetail.supportCode }&pageNum=${param.pageNum }'">답변</button>
						</c:if>
						<button onclick="location='support.do?method=supportList&pageNum=${param.pageNum }'">목록</button>
					</td>
				</tr>
			</table>
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