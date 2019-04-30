<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="conPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <title>HOLLIDAY</title>
   <link href="${conPath }/css/frame.css" rel="stylesheet">
   <link href="${conPath }/css/hotel_notice/hotel_notice_View.css" rel="stylesheet">
   <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
</head>
<body>
   <jsp:include page="../main/header.jsp"/>
   <jsp:include page="../main/remote.jsp"/>
   <div id="section">
      <div id="contentArea">
         <div id="topic">NOTICE</div>
         <div id="content">
            <table id="board">
               <tr id="title">
                  <td colspan="2">
                     <div id="info_title">
                        ${hotel_notice.noticeTitle }
                     </div>
                     <div id="info_idip" class="info_area">
                        <div>
                           ID : ${hotel_notice.adminId }   
                        </div>
                        <div>
                           DATE : <fmt:formatDate value="${hotel_notice.noticeDate }" type="both" pattern="yyyy.MM.dd HH:mm"/>
                        </div>
                     </div>
                     <div id="info_dateview" class="info_area">
                        <div>
                           IP : ${hotel_notice.noticeIp }
                        </div>
                        <div>
                           VIEW : ${hotel_notice.noticeView }
                        </div>
                     </div>
                  </td>
               </tr>
               <tr id="content">
                  <td colspan="2">
                     <div>
                        <pre>${hotel_notice.noticeContent }</pre>
                     </div>
                  </td>
               </tr>
               <c:if test="${not empty hotel_notice.noticeFile }">
                  <tr id="file">
                     <td colspan="2">
                        첨부 : <a href="${conPath }/hotel_notice_fileupload/${hotel_notice.noticeFile}">${hotel_notice.noticeFile}</a>
                     </td>
                  </tr>
               </c:if>
               <tr id="button_area">
                  <td colspan="2">
                     <div id="eventRegisterBtn">
                        <c:if test="${not empty admin }">
                           <button onclick="location='${conPath}/hotel_notice.do?method=hotel_notice_ModifyForm&noticeCode=${hotel_notice.noticeCode }&pageNum=${param.pageNum }'">수정</button>
                           <button onclick="location='${conPath}/hotel_notice.do?method=hotel_notice_Delete&noticeCode=${hotel_notice.noticeCode }&pageNum=${param.pageNum }'">삭제</button>
                        </c:if>
                        <button onclick="location='${conPath}/hotel_notice.do?method=hotel_notice_List&pageNum=${param.pageNum }'">목록</button>
                     </div>
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