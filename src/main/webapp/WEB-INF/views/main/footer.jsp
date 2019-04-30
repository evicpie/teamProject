<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="conPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="https://fonts.googleapis.com/css?family=Gothic+A1" rel="stylesheet">
<title>Insert title here</title>
<style>
	*{	padding:0;
		margin:0;}
	
	footer{
		width:1890px;
		margin: 0 auto;
		}
	footer #footerImg{
		height:400px;
		bottom:0px;
		position: relative;
	}
	footer #footerImg img{
		width:1890px;
		
		
	}
	footer #footerImg #phrase{
		position: absolute;
		right:36%;
		bottom:110px;
		text-align: center;
		color:white;
		font-family: 'Gothic A1', sans-serif;
		font-size: 1.2em;
	}
	footer #footerImg #conts{
		position: absolute;
		right:38%;
		bottom:30px;
		text-align: center;
		color: white;
		font-family: 'Gothic A1', sans-serif;
		font-size: 1.2em;
	}
	footer #footerImg #conts a{
		color: white;
		text-decoration: none;
	}
	
</style>
</head>
<body>
	<footer>
		<div id="footerImg">
			<img src="${conPath }/img/footer.jpg">
			<div id="phrase">
				<p>Hotel Holiday에서 여행의 피로를 풀 숙소를 찾아보세요</p>
			</div>
			<div id="conts">
				<p><a href="${conPath }/admin.do?method=AdminloginForm">(주)Hotel Holiday</a> | Tel : 02-123-1234 </p>
				<p>Fax : 070-1234-1234 | e-mail : holiday@tj.com</p> 
			</div>
		</div>
	</footer>
</body>
</html>