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
<link href="${conPath }/css/loginForm.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Rubik" rel="stylesheet">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="${conPath }/js/frame.js"></script>
</head>
<body>
	<c:if test="${not empty result}">
		<script>alert('${result}');</script>
	</c:if>
   <jsp:include page="../main/header.jsp"/>
   <jsp:include page="../main/remote.jsp"/>
   
   <!-- [은실] frame.css 공통 적용하려고 id 이름 조정 -->
   <div id="section">
   	  <div id="headerTopic">L O G I N</div>
      <div id="contentArea">
      	 <div id="topic"></div>
         <div id="content">
			<form action="${conPath }/guest.do" method="post"><!-- [은실] method=post 추가 -->
				<input type="hidden" name="method" value="login">
				<table>
					<caption>LOGIN</caption>
					<tr><th>아 이 디</th><td><input type="text" name="guestId" required="required" value="${guestId }"></td></tr>
					<tr><th>비밀번호</th><td><input type="password" name="guestPw" required="required" value="${guestPw }"></td></tr>
					<tr><td colspan="2">
						<input type="submit" value="로그인">
					</td></tr>
				</table>
			</form>
				<div id="findIdPw">
					<a href="${conPath }/guest.do?method=findIdForm">아이디</a>/
					<a href="${conPath }/guest.do?method=findPwForm">비밀번호찾기</a>
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