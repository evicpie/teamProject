<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="conPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <title>HOLLIDAY</title>
   <link href="${conPath }/css/frame.css" rel="stylesheet">
   <link href="${conPath }/css/hotel_notice/hotel_notice_ModifyForm.css" rel="stylesheet">
   <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
   <script src="${conPath }/ckeditor/ckeditor.js"></script>
   <script type="text/javascript">
		$(function(){
			CKEDITOR.replace('noticeContent',{
				filebrowserUploadUrl: '${conPath }/fileupload.do'
			});
		});
   </script>
   <script>
      $(document).ready(function(){
         var file = $('.noticeFile');
         file.on('change', function(){
            if(window.FileReader){
               var filename = $(this)[0].files[0].name;
            }else {
               var filename = $(this).val().split('/').pop().split('\\').pop(); // 파일명만 추출   
            }
            $(this).siblings('.file_name').val(filename);
         });
      });
   </script>
   
</head>
<body>
   <jsp:include page="../main/header.jsp"/>
   <jsp:include page="../main/remote.jsp"/>
   <div id="section">
      <div id="contentArea">
         <div id="topic">NOTICE</div>
         <div id="content">
            <form action="${conPath }/hotel_notice.do?method=hotel_notice_Modify&pageNum=${param.pageNum}" method="post" enctype="multipart/form-data">
               <input type="hidden" name="noticeCode" value="${notice.noticeCode }">
               <input type="hidden" name="noticeDate" value="${notice.noticeDate }">
               <input type="hidden" name="original_noticeFile" value="${notice.noticeFile }">
               <table id="board">
                  <tr id="id_titleInput">
                     <td class="item" id="radius1">
                        <span>ID</span>
                     </td>
                     <td class="item_input">
                        <input type="text" id="adminId" name="adminId" value="${notice.adminId }" readonly="readonly">
                     </td>
                     <td class="item">
                        <span>TITLE</span>
                     </td>
                     <td class="item_input" id="radius2">
                        <input type="text" id="noticeTitle" name="noticeTitle" required="required" value="${notice.noticeTitle }">
                     </td>
                  </tr>
                  <tr id="write_area">
                     <td colspan="4">
                        <textarea rows="5" cols="32" name="noticeContent">${notice.noticeContent }</textarea>
                     </td>
                  </tr>
                  <tr id="file_area">
                     <td id="file_span">
                        <span>FILE</span>
                     </td>
                     <td>
                        <input type="text" class="file_name" disabled="disabled" value="${notice.noticeFile }" >&nbsp;
                        <label for="noticeFile"><img src="${conPath }/hotel_notice_img/upload.png"></label>
                        <input type="file" class="noticeFile" id="noticeFile" name="temp_noticeFile">
                     </td>
                  </tr>
                  <tr id="button_area">
                     <td colspan="4">
                        <div id="eventRegisterBtn">
                           <input type="button" value="목록" onclick="location='${conPath}/hotel_notice.do?method=hotel_notice_List&pageNum=${param.pageNum }'">
                           <input type="submit" value="확인">
                        </div>
                     </td>
                  </tr>
               </table>
            </form>
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