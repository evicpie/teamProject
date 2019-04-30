<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="conPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${conPath }/css/event/eventRegister.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Rubik" rel="stylesheet">
<title>Insert title here</title>
<style>
	[id="plusPoint"] {
		display: none;
	}
	</style>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script>
		$(document).ready(function(){
			$('[value="on"]').click(function() {
				$('[id="plusPoint"]').css('display', 'table-row');
			});
			$('[value="off"]').click(function() {
				$('[id="plusPoint"]').css('display', 'none');
			});
			
			// 파일첨부 이름 보여주는 로직
	         $('.eventImages').change(function() {
	            var fileName;
	            if(window.FileReader) {
	               fileName = $(this)[0].files[0].name;
	            } else {
	               fileName = $(this).val().split('/').pop().split('\\').pop();
	            }
	            $(this).siblings('.eventFileName').val(fileName);
	         });	
		});
		
	</script>
</head>
<body>
	<jsp:include page="../main/header.jsp"/>
	<jsp:include page="../main/remote.jsp"/>
	<div id="content">
		<form action="${conPath }/event.do" method="post" enctype="multipart/form-data">
			<input type="hidden" name="method" value="eventRegister">
			<table id="form">
				<tr><th>제목</th>
					<td id="title"><input type="text" name="eventTitle" required="required"></td>
				</tr>
				<tr><th>메인베너</th>
					<td>
						<input type="file" class="eventImages" id="tempBanner" name="tempBanner" required="required" style="display: none;" onchange="showFileName(this.value)">
						<input type="text" class="eventFileName" name="tempBanner" disabled="disabled" id="tempBannerName">
						<label for="tempBanner"><img src="${conPath }/hotel_notice_img/upload.png"/></label>
					</td>
				</tr>
				<tr><th>파일첨부 1</th>
					<td>
						<input type="file" class="eventImages" id="tempImg1" name="tempImg1" required="required" style="display:none;" onchange="showFileName(this.value)">
						<input type="text" class="eventFileName" name="tempImg1" disabled="disabled" id="tempImg1Name">
						<label for="tempImg1"><img src="${conPath }/hotel_notice_img/upload.png"/></label>
					</td>
				</tr>
				<tr><th>파일첨부 2</th>
					<td>
						<input type="file" class="eventImages" id="tempImg2" name="tempImg2" style="display:none;" onchange="showFileName(this.value)">
						<input type="text" class="eventFileName" name="tempImg2" disabled="disabled" id="tempImg2Name">
						<label for="tempImg2"><img src="${conPath }/hotel_notice_img/upload.png"/></label>
					</td>
				</tr>
				<tr><th>파일첨부 3</th>
					<td>
						<input type="file" class="eventImages" id="tempImg3" name="tempImg3" style="display:none;" onchange="showFileName(this.value)">
						<input type="text" class="eventFileName" name="tempImg3" disabled="disabled" id="tempImg3Name">
						<label for="tempImg3"><img src="${conPath }/hotel_notice_img/upload.png"/></label>
					</td>
				</tr>
				<tr><th>상세소개</th>
					<td><textarea rows="5" cols="10" name="eventInfo" id="info"></textarea> </td>
				</tr>
				<tr>
					<th>버튼생성</th>
					<td>
						<input type="radio" value="on" name="Pointbtn" class="onOff">ON
						<input type="radio" value="off" name="Pointbtn" class="onOff" checked="checked" >OFF
					</td>
				</tr>	
				<tr id="plusPoint">
					<th>포인트 추가</th>
					<td><input type="number" name="sendPoint" value="0"> POINT</td>
				</tr>
				<!-- [은실] 포인트 입력창 number타입으로 수정, 기본값 0 추가 -->
				<tr>
					<td colspan="2" id="buttons">
						<input type="submit" value="등록" id="button">
					</td>
				</tr>
			</table>
		</form>
	</div>
	<jsp:include page="../main/footer.jsp"/>
</body>
</html>