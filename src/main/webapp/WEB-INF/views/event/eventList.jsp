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
<link href="https://fonts.googleapis.com/css?family=Rubik" rel="stylesheet">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="${conPath }/js/frame.js"></script>

<script>
   var registImg = ['${conPath}/img/eventRegister.png','${conPath}/img/eventRegisterOnMouse.png']

   function regist(n){
      var img = document.getElementById('register');
      img.src = registImg[n];
   }   
</script>
<style>
	/* 이벤트 배너 이미지 */
    #section #contentArea #board img{
   		width:525px;
   		height:245px;
   }

	/* 이벤트 종료 커버 */
   .endEventCover {
      position: absolute;
      opacity: 0.65;
      top: -227px;
   }    
</style>

</head>
<body>
   <jsp:include page="../main/header.jsp"/>
   <jsp:include page="../main/remote.jsp"/>
   
   <!-- [은실] frame.css 공통 적용하려고 id 이름 조정 -->
   <div id="section">
   	  <div id="headerTopic">E V E N T</div>
      <div id="contentArea">
         <div id="topic">EVENT</div>
         <div id="content">
            <table id="board">
               <c:set var="count" value="0"/>
               <tr>
               <c:forEach var="event" items="${eventList }">
                  <c:set var="count" value="${count+1}"/>
                     <td>
                        <a href="${conPath }/event.do?method=eventDetail&eventNum=${event.eventNum}&pageNum=${paging.currentPage}">
                        <img src="${conPath }/eventImgFileUpload/${event.eventBanner}">
                        <c:if test="${event.eventStatus eq 0 }">
                           <img src="${conPath }/eventImgFileUpload/endEvent.png" alt="이벤트 종료 이미지" class="endEventCover">
                        </c:if></a>
                     </td>
                  <c:if test="${count%2==0}">
                     </tr><tr>
                  </c:if>
               </c:forEach>
            </table>
            <!-- ★★페이징★★ -->
            <div id="paging">
            <c:if test="${paging.startPage>paging.blockSize}">
               [ <a href="${conPath }/event.do?method=eventList&pageNum=${paging.startPage+1 }">&lt;</a> ]
            </c:if>   
            <c:forEach var="i" begin="${paging.startPage}" end="${paging.endPage }">
               <c:if test="${paging.currentPage==i }"> 
                  <b id="currentPage"> ${i } </b> 
               </c:if>
               <c:if test="${paging.currentPage != i }">
                  <a href="${conPath }/event.do?method=eventList&pageNum=${i }" id="notCurrent">${i }</a>
               </c:if>
            </c:forEach>
            <c:if test="${paging.endPage<paging.pageCnt }">
               [ <a href="${conPath }/event.do?method=eventList&pageNum=${paging.endPage+1 }">&gt;</a> ]
            </c:if>
            </div><!-- ★★페이징★★ -->
               <div id="eventRegisterBtn">
               <c:if test="${not empty admin}"><!-- not으로 수정하기 -->
                  <a href="${conPath }/event.do?method=eventRegisterForm"><img id="register" src="${conPath }/img/eventRegister.png" alt="eventRegister.png" onmouseover="regist(1);" onmouseout="regist(0);" ></a>
               </c:if>
            </div>
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