<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>HOTEL HOLIDAY</title>
<link href="https://fonts.googleapis.com/css?family=Rubik" rel="stylesheet"><!-- ★ 게시판 이름에 사용되는 폰트★ -->
<link href="${conPath }/css/frame.css" rel="stylesheet">
<link href="${conPath }/css/hotel_notice/hotel_notice_List.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script>
	
/* 이벤트 등록 버튼 관련 Javascript - 등록버튼이 없으면 지우시면 됩니당 */	
   	// 이벤트 등록 버튼 이미지 주소 배열
	var registImg = ['${conPath}/img/eventRegister.png','${conPath}/img/eventRegisterOnMouse.png'];
	
   	// 이벤트 등록 버튼 마우스오버 효과
	function regist(n){
	   var img = document.getElementById('register');
	   img.src = registImg[n];
	}   
/* 이벤트 등록 버튼 관련 Javascript 끝 */	

   
</script>
</head>
<body>
	
   <!-- ★ HEADER & REMOTE CONTROLLER ★ -->
   <jsp:include page="../main/header.jsp"/>
   <jsp:include page="../main/remote.jsp"/>
   
   <div id="section">
   
      <div id="contentArea">
         <div id="topic"><!-- ★  게시판 이름 적어주세요 ★ -->NOTICE</div>
         
         <!-- ★  내용물 영역 ★ -->
         <!-- ★  게시판 페이지가 아니라면 #content div안을 자유롭게 수정해주세요.  ★ -->
         <div id="content">
         	
         	<!-- ★  아래의 테이블은 게시판 테이블입니다.  ★ -->
            <table id="board">
            	<tr id="table_item">
					<td id="item_NO">NO</td><td id="item_ID">ID</td><td id="item_TITLE">TITLE</td><td id="item_DATE">DATE</td><td id="item_VIEW">VIEW</td>
				</tr>
				<c:forEach var="list" items="${hotel_notice}">
					<tr class="table_detail">
						<td class="detail_NO">${list.noticeCode }</td>
						<td class="detail_ID">${list.adminId }</td>
						<td class="detail_TITLE"><a href="hotel_notice.do?method=hotel_notice_View&noticeCode=${list.noticeCode }&pageNum=${paging.currentPage}">${list.noticeTitle }</a><c:if test="${list.noticeFile!=null or list.noticeContent.indexOf('<img')!=-1}">&nbsp;<img src="${conPath }/hotel_notice_img/file.gif" alt="파일첨부여부" ></c:if></td>
						<td class="detail_DATE"><fmt:formatDate value="${list.noticeDate }" pattern="yyyy.MM.dd"/></td>
						<td class="detail_VIEW">${list.noticeView}</td>
					</tr>
				</c:forEach>
				<tr>
					<td colspan="5">
						<div id="eventRegisterBtn">
				            <c:if test="${not empty admin}">
				               <a href="${conPath }/hotel_notice.do?method=hotel_notice_WriteForm&pageNum=${paging.currentPage }"><img id="register" src="${conPath }/img/eventRegister.png" alt="eventRegister.png" onmouseover="regist(1);" onmouseout="regist(0);" ></a>
				            </c:if>
			            </div>
					</td>
				</tr>
				<tr id="paging_area">
					<td colspan="5">
						<div id="paging">
			            	<c:if test="${paging.startPage>paging.blockSize}">
								<a href="${conPath }/hotel_notice.do?method=hotel_notice_List&pageNum=${paging.startPage-1}&schItem=${param.schItem }&schWord=${param.schWord}">&nbsp;〈&nbsp;</a>
							</c:if>
							<c:forEach var="i" begin="${paging.startPage}" end="${paging.endPage }">
								<c:if test="${paging.currentPage==i }">
									<b>&nbsp;${i }&nbsp;</b>
								</c:if>
								<c:if test="${paging.currentPage != i }">
									<a href="${conPath }/hotel_notice.do?method=hotel_notice_List&pageNum=${i }&schItem=${param.schItem }&schWord=${param.schWord}">&nbsp;${i }&nbsp;</a>
								</c:if>
							</c:forEach>
							<c:if test="${paging.endPage<paging.pageCnt }">
								<a href="${conPath }/hotel_notice.do?method=hotel_notice_List&pageNum=${paging.endPage + 1}&schItem=${param.schItem }&schWord=${param.schWord}">&nbsp;〉&nbsp;</a>
							</c:if>
			            </div>
					</td>
				</tr>
				<tr id="search_area">
					<td colspan="5">
						<form action="${conPath }/hotel_notice.do">
							<input type="hidden" name="method" value="hotel_notice_List">
							<select name="schItem">
								<option value="noticeTitle" <c:if test="${param.schItem=='noticeTitle' }">selected="selected"</c:if>>
									제목
								</option>
								<option value="noticeContent" <c:if test="${param.schItem=='noticeContent' }">selected="selected"</c:if>>
									내용
								</option>
								<option value="noticeTitleContent" <c:if test="${param.schItem=='noticeTitleContent' }">selected="selected"</c:if>>
									제목+내용
								</option>
								<option value="adminId" <c:if test="${param.schItem=='adminId' }">selected="selected"</c:if>>
									작성자
								</option>
							</select>
							<input type="text" name="schWord" value="${param.schWord }">
							<input type="submit" id="searchSubmit" value="검색" >
							<label for="searchSubmit"><img src="${conPath }/hotel_notice_img/search_icon.png" alt="검색버튼" ></label>
						</form>
					</td>
				</tr>
            </table>
            <!-- ★ 게시판 테이블 끝 ★ -->
            <!-- ★ 등록(글쓰기)버튼 영역 ★ -->
	            <!-- ★ 등록(글쓰기) 버튼 영역 끝 ★ -->
	            <!-- ★ 페이징 처리 영역 : 해당 페이지에 맞게 조건식과 링크주소를 수정하세요. ★ -->
	            <!-- 숫자로 나타날 부분에 id=currentPage/notCurrent 유지해주세요. ★ -->
         </div><!-- ★ #content 끝 ★  -->
      </div><!-- ★ #contentArea 끝 ★ -->
      <!-- ★ 일러스트 영역: 도은이 빼고 건드리지 마세요!★ -->
      <div id="illustArea">
	      <div id="phrase">
   		      <img src="${conPath }/img/phrase.png" alt="illust"/>
   	 	  </div>
   	  </div>
   </div>
   
   <!-- ★ FOOTER ★ -->
   <jsp:include page="../main/footer.jsp"/>
   
</body>
</html>