<%@page import="java.sql.Date"%>
<%@page import="com.tj.hotel.model.Guest"%>
<%@page import="com.tj.hotel.dao.GuestDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="conPath" value="${pageContext.request.contextPath }"/>
<c:if test="${not empty successMsg }">
	<script>
		alert('${successMsg}');
	</script>
</c:if>
<c:if test="${not empty failMsg }">
	<script>
		alert('${failMsg}');
	</script>
</c:if>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>HOLLIDAY</title>
	<link href="${conPath }/css/frame.css" rel="stylesheet">
	<link href="${conPath }/css/guest/guestSearch.css" rel="stylesheet">
	<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script src="${conPath }/js/frame.js"></script>
	<script>
		$(document).ready(function(){
			$('#schItem').change(function(){
				var status = ["탈퇴", "일반", "VIP", "불량"];
				var schItem = $('#schItem').val();
				if(schItem == 'guestStatus'){
					var option = "<select name='schWord'>";
					for(var count = 0; count < status.length; count++){
						option += "<option value=" + count + ">" + status[count] + "</option>";
					}
					option += "</select>";
					$('#search').html(option);
				}else{
					var searchBox = $("<input type=\"text\" name=\"schWord\" id=\"schWord\" value=\"${param.schWord }\">");
					$('#search').html(searchBox);
				}
			});
			if('${param.schItem}'=='guestStatus'){
				var status = ["탈퇴", "일반", "VIP", "불량"];
				var option = "<select name='schWord'>";
				for(var count = 0; count < status.length; count++){
					if('${param.schWord}'==count){
						option += '<option value=' + count + '  selected="selected" >' + status[count] + '</option>';
					}else{
						option += '<option value=' + count + '>' + status[count] + '</option>';
					}
				}
				option += "</select>";
				$('#search').html(option);
			}
			$('#addBlack').click(function(){
				var locationString = '${conPath}/guest.do?method=updateGuestStatus&guestStatus=3&pageNum=${paging.currentPage}&schWord=${param.schWord}&schItem=${param.schItem}&';
				var chkConfirm = 0;
				$('input[name="guestId"]').each(function(idx, item){
					if(item.checked){
						locationString += 'guestId=' + $(this).val() + '&';
						chkConfirm++;
					}
				});
				if(chkConfirm==0){
					alert('한명 이상의 회원을 선택해야 합니다');
				}else{
					location.href = locationString;
				}
			});
			$('#addNormal').click(function(){
				var locationString = '${conPath}/guest.do?method=updateGuestStatus&guestStatus=1&pageNum=${paging.currentPage}&schWord=${param.schWord}&schItem=${param.schItem}&';
				var chkConfirm = 0;
				$('input[name="guestId"]').each(function(idx, item){
					if(item.checked){
						locationString += 'guestId=' + $(this).val() + '&';
						chkConfirm++;
					}
				});
				if(chkConfirm==0){
					alert('한명 이상의 회원을 선택해야 합니다');
				}else{
					location.href = locationString;	
				}
			});
			$('#addVIP').click(function(){
				var locationString = '${conPath}/guest.do?method=updateGuestStatus&guestStatus=2&pageNum=${paging.currentPage}&schWord=${param.schWord}&schItem=${param.schItem}&';
				var chkConfirm = 0;
				$('input[name="guestId"]').each(function(idx, item){
					if(item.checked){
						locationString += 'guestId=' + $(this).val() + '&';
						chkConfirm++;
					}
				});
				if(chkConfirm==0){
					alert('한명 이상의 회원을 선택해야 합니다');
				}else{
					location.href = locationString;
				}
			});
			$('#givingPoint').click(function(){
				var locationString = '${conPath}/guest.do?method=givingPoint&pageNum=${paging.currentPage}&schWord=${param.schWord}&schItem=${param.schItem}&';
				var chkConfirm = 0;
				$('input[name="guestId"]').each(function(idx, item){
					if(item.checked){
						locationString += 'guestId=' + $(this).val() + '&';
						chkConfirm++;
					}
				});
				if(chkConfirm==0){
					alert('한명 이상의 회원을 선택해야 합니다');
				}else{
					var point = prompt('부여할 포인트를 입력하세요', 'ex : 1000, 2000...');
					if(point.length==0){
						alert('반드시 값을 입력해야합니다');
					}else{
						if(!isNaN(point)){
							locationString += 'guestPoint=' + point;
							location.href = locationString;
						}else{
							alert('숫자만 입력 가능합니다');
						}	
					}
				}
			});
		});
	</script>
</head>
<body>
	<jsp:include page="../main/header.jsp"/>
	<jsp:include page="../main/remote.jsp"/>
    
	<div id="section">
		<div id="contentArea">
			<div id="topic">
				GUEST LIST
			</div>
			<div id="content">
				<table id="board">
					<tr id="table_item">
						<td id="item_ID">ID</td>
						<td id="item_NAME">NAME</td>
						<td id="item_EMAIL">EMAIL</td>
						<td id="item_PHONE">PHONE</td>
						<td id="item_BIRTH">BIRTH</td>
						<td id="item_POINT">POINT</td>
						<td id="item_STATUS">STATUS</td>
						<td id="item_CHECK">CHECK</td>
					</tr>
					<c:forEach var="guestList" items="${guestView }">
						<tr class="table_detail">
							<td>${guestList.guestId }</td>
							<td>${guestList.guestName }</td>
							<td>${guestList.guestEmail }</td>
							<td>${guestList.guestPhone }</td>
							<td>${guestList.guestBirth }</td>
							<td>${guestList.guestPoint }</td>
							<td>
								<c:if test="${guestList.guestStatus==0 }">탈퇴</c:if>
								<c:if test="${guestList.guestStatus==1 }">일반</c:if>
								<c:if test="${guestList.guestStatus==2 }">VIP</c:if>
								<c:if test="${guestList.guestStatus==3 }">불량</c:if> 
							</td>
							<td>
								<input type="checkbox" name="guestId" id="check${guestList.guestId }" value="${guestList.guestId }">
								<label for="check${guestList.guestId }"></label>
							</td>
						</tr>
					</c:forEach>
					<tr id="button_area">
						<td colspan="8">
							<div id="eventRegisterBtn">
								<input type="button" value="불량회원 등록" id="addBlack">
								<input type="button" value="일반회원 등록" id="addNormal">
								<input type="button" value="VIP 등록" id="addVIP">
								<input type="button" value="포인트 부여" id="givingPoint">
							</div>			
						</td>
					</tr>
					<tr id="paging_area">
						<td colspan="8">
							<div id="paging">
								<c:if test="${paging.startPage>paging.blockSize}">
									<a href="${conPath }/guest.do?method=guestSearch&pageNum=${paging.startPage-1 }&schItem=${param.schItem }&schWord=${param.schWrod}">&nbsp;〈&nbsp;</a>
								</c:if>	
								<c:forEach var="i" begin="${paging.startPage}" end="${paging.endPage }">
									<c:if test="${paging.currentPage==i }"> 
										<b>&nbsp;${i }&nbsp;</b> 
									</c:if>
									<c:if test="${paging.currentPage != i }">
										<a href="${conPath }/guest.do?method=guestSearch&pageNum=${i }&schItem=${param.schItem }&schWord=${param.schWord}">&nbsp;${i }&nbsp;</a>
									</c:if>
								</c:forEach>
								<c:if test="${paging.endPage<paging.pageCnt }">
									<a href="${conPath }/guest.do?method=guestSearch&pageNum=${paging.endPage+1 }&schItem=${param.schItem }&schWord=${param.schWord}">&nbsp;〉&nbsp;</a>
								</c:if>
							</div>
						</td>
					</tr>
					<tr id="search_area">
						<td colspan="8">
							<form action="${conPath }/guest.do">
								<input type="hidden" name="method" value="guestSearch">
								<select name="schItem" id="schItem">
									<option value="guestId" <c:if test="${param.schItem=='guestId' }">selected="selected"</c:if>>
										아이디
									</option>
									<option value="guestName" <c:if test="${param.schItem=='guestName' }">selected="selected"</c:if>>
										이름
									</option>
									<option value="guestPhone" <c:if test="${param.schItem=='guestPhone' }">selected="selected"</c:if>>
										전화번호
									</option>
									<option value="guestStatus" <c:if test="${param.schItem=='guestStatus' }">selected="selected"</c:if>>
										회원상태
									</option>
								</select>
								<div id="search">
									<input type="text" name="schWord" id="schWord" value="${param.schWord }">
								</div>
								<input type="submit" id="searchSubmit" value="검색">
								<label for="searchSubmit"><img src="${conPath }/guest_img/search_icon.png" alt="검색버튼" ></label>
							</form>
						</td>
					</tr>
				</table>
			</div>
		</div>
		<div id="illustArea">
	      <div id="phrase">
   		      <img src="${conPath }/img/phrase.png" alt="illust"/>
   	 	  </div>
   	  </div>
	</div>
	<jsp:include page="../main/footer.jsp"/>
</body>
</html>

	