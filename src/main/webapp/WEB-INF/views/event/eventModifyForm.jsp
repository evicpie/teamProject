<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="conPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="${conPath }/css/event/eventModify.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link href="https://fonts.googleapis.com/css?family=Rubik" rel="stylesheet">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
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
   <div id="headerTopic">E V E N T</div>
   
   <div id="content">
   <form action="${conPath }/event.do" method="post"  enctype="multipart/form-data">
      <input type="hidden" name="method" value="eventModify">
      <input type="hidden" name="eventNum" value="${eventDetail.eventNum }">
      <input type="hidden" name="pageNum" value="${param.pageNum }"><!-- [은실] 페이지넘 파라미터로 넘겨주려고 추가 -->
      <table id = form>
        
        <tr>
        	<th>제목</th>
			<td id="title"><input type="text" name="eventTitle" value="${eventDetail.eventTitle }" required="required"></td>
		</tr>
		<tr>
			<th>메인베너</th>
			<td>
				<input type="file" class="eventImages" id="tempBanner" name="tempBanner" style="display: none;" onchange="showFileName(this.value)">
				<input type="text" class="eventFileName" name="tempBanner" disabled="disabled" id="tempBannerName" value="${eventDetail.eventBanner }">
				<label for="tempBanner"><img src="${conPath }/hotel_notice_img/upload.png"/></label>
			</td>
		</tr>
		<tr>
			<th>파일첨부 1</th>
			<td>
				<input type="file" class="eventImages" id="tempImg1" name="tempImg1" style="display:none;" onchange="showFileName(this.value)">
				<input type="text" class="eventFileName" name="tempImg1" disabled="disabled" id="tempImg1Name" value="${eventDetail.eventImg1 }">
				<label for="tempImg1"><img src="${conPath }/hotel_notice_img/upload.png"/></label>
			</td>
		</tr>
			<tr><th>파일첨부 2</th>
			<td>
				<input type="file" class="eventImages" id="tempImg2" name="tempImg2" style="display:none;" onchange="showFileName(this.value)">
				<input type="text" class="eventFileName" name="tempImg2" disabled="disabled" id="tempImg2Name" value="${eventDetail.eventImg2 }">
				<label for="tempImg2"><img src="${conPath }/hotel_notice_img/upload.png"/></label>
			</td>
		</tr>
		<tr>
			<th>파일첨부 3</th>
			<td>
				<input type="file" class="eventImages" id="tempImg3" name="tempImg3" style="display:none;" onchange="showFileName(this.value)">
				<input type="text" class="eventFileName" name="tempImg3" disabled="disabled" id="tempImg3Name" value="${eventDetail.eventImg3 }">
				<label for="tempImg3"><img src="${conPath }/hotel_notice_img/upload.png"/></label>
			</td>
		</tr>
		<tr>
			<th>상세소개</th>
			<td><textarea rows="5" cols="10" name="eventInfo" id="info">${eventDetail.eventInfo}</textarea> </td>
		</tr>
		<tr>
			<th>버튼생성</th>
			<td>
				<input type="radio" value="on" name="Pointbtn" class="onOff" 
					<c:if test="${eventDetail.sendPoint > 0}">
         				checked="checked"	
         			</c:if>
				>ON
				<input type="radio" value="off" name="Pointbtn" class="onOff"
					<c:if test="${eventDetail.sendPoint <= 0}">
         				checked="checked"	
         			</c:if>
				>OFF
			</td>
		</tr>	
		<tr id="plusPoint" <c:if test="${eventDetail.sendPoint <= 0 }">style="display: none;"</c:if>>
			<th>포인트 추가</th>
			<td><input type="number" name="sendPoint" value="${eventDetail.sendPoint }"> POINT</td>
		</tr><!-- [은실] 포인트 입력창 number타입으로 수정, 기본값 0 추가 -->
		<tr>
		<tr><th>이벤트 상태</th>
			<td><input type="radio" value="1" name="eventStatus" class="onOff"
         	<c:if test="${eventDetail.eventStatus eq 1 }">
         		checked="checked"	
         	</c:if>
         >진행<input type="radio" value="0" name="eventStatus" class="onOff"
         	<c:if test="${eventDetail.eventStatus eq 0 }">
         		checked="checked"
         	</c:if>
         >완료</td>
        
         <%-- 
         <tr><td>배너 수정</td><td><input type="file" name="eventBanner">${eventDetail.eventBanner }</td></tr>
         <tr><td>파일수정 1</td><td class="files"><input type="file" name="eventImg1">${eventDetail.eventImg1 }</td></tr>
         <tr><td>파일수정 2</td><td class="files"><input type="file" name="eventImg2">${eventDetail.eventImg2 }</td></tr>
         <tr><td>파일수정 3</td><td class="files"><input type="file" name="eventImg3">${eventDetail.eventImg3 }</td></tr>
         <tr><td>상세설명 수정</td><td><textarea name="eventInfo"></textarea></td></tr>
          --%>
        
         <tr><td colspan="2" id="buttons">
            <input type="button" class="button" value="목록" onclick="location='event.do?method=eventList&pageNum=${param.pageNum}'">
            <input type="reset" class="button" value="초기화">
            <input type="submit" class="button" value="수정">
      </table>
   </form>
   </div>
   <jsp:include page="../main/footer.jsp"/>
</body>
</html>