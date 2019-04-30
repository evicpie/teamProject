<%@page import="java.sql.Date"%>
<%@page import="com.tj.hotel.model.Guest"%>
<%@page import="com.tj.hotel.dao.GuestDaoImpl"%>
<%@page import="com.tj.hotel.dao.GuestDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="conPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원 더미데이터 50명 넣는 페이지</title>
	<link href="${conPath }/css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<!-- for문돌려서 넣어보려고 했는데 왜 NullPointerException이 뜨는걸까....... -->
	<%
		for(int i=0; i<50; i++){
			GuestDaoImpl dao = new GuestDaoImpl();
			Guest guest = new Guest();
			guest.setGuestId("hong" + i);
			guest.setGuestPw("pw" + i);
			guest.setGuestEmail("hong" + i + "@tj.com");
			guest.setGuestPhone("010-1234-32" + i);
			guest.setGuestBirth(Date.valueOf("93/12/21"));
			dao.joinGuest(guest);
		}
		
	%>
</body>
</html>