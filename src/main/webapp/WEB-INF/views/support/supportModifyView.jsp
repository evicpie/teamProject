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
<link href="${conPath }/css/support/supportForm.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Rubik" rel="stylesheet">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="${conPath }/js/frame.js"></script>
	
<!-- 이하 해당 페이지 고유의 스크립트 및 CSS 영역 -->


</head>
<body>
   <jsp:include page="../main/header.jsp"/>
   <jsp:include page="../main/remote.jsp"/>
   
   <!-- [은실] frame.css 공통 적용하려고 id 이름 조정 -->
   <div id="section">
   	  <div id="headerTopic">CUSTOMER CENTER</div>
      <div id="contentArea">
      	 <div id="topic"></div>
         <div id="content">
		<form action="support.do" method="post" name="frm" enctype="multipart/form-data">
			<input type="hidden" name="method" value="supportModify">
			<input type="hidden" name="supportCode" value="${supportDetail.supportCode }">
			<input type="hidden" name="pageNum" value="${param.pageNum }">
			<table>
				<caption>문의 수정</caption>
				<tr>
					<th>글쓴이</th>
					<td><input type="text" name="guestId" readonly="readonly" required="required" value="${guest.guestId }" size="90"></td>
				</tr>
				<tr>
					<th>글제목</th>
					<td><input type="text" name="supportTitle" required="required" value="${supportDetail.supportTitle }" size="90"></td>
				</tr>
				<tr>
					<th>글내용</th>
					<td><textarea name="supportContent" rows="26" cols="91" required="required">${supportDetail.supportContent }</textarea></td>
				</tr>
				<tr>
					<th>첨부파일</th>
					<td><input type="file" name="tempFile">${supportDetail.supportFile }</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="등록">
					<input type="reset" value="원래대로">
					<input type="button" value="뒤로" onclick="history.back()">
					</td>
				</tr>
			</table>
		</form>
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