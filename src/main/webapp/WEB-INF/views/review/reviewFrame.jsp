<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="conPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ReviewFrame</title>
<link href="https://fonts.googleapis.com/css?family=Rubik" rel="stylesheet">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link href="${conPath }/css/review/reviewFrame.css" rel="stylesheet" type="text/css">
<link href="${conPath }/css/review/reviewDialog.css" rel="stylesheet" type="text/css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$(document).ready(function() {
		showMoreReview(); // 첫 댓글 페이지 세팅
		
		// 후기 수정 다이얼로그창 세팅
		$("#dialog-form").dialog({
			  autoOpen: false,
		      height: 500,
		      width: 600,
		      modal: true,
		      buttons: {
		        "후기 수정": function() {
		        	$('#reviewModifyForm').submit();
		        },
		        "닫기": function() {
		        	$('#reviewModifyForm')[ 0 ].reset();
		          $(this).dialog( "close" );
		        }
		      },
		      close: function() {
		    	  $('#reviewModifyForm')[ 0 ].reset();
		        //allFields.removeClass( "ui-state-error" );
		      }
		});
	});
	
	// 리뷰 목록 한 페이지 불러오는 함수
	function showMoreReview() {
		var hotelCode = '${param.hotelCode }';
		//alert('hotelCode: ' + hotelCode);
		
		var pageCnt = Number('${pageCnt }');
		//alert('pageCnt: ' + pageCnt);
		
		var pageNum = Number($('.pageNum').last().val());
		if(isNaN(pageNum)) {
			pageNum = 0;
		}
		//alert('lastPageNum: ' + pageNum);
		
		$.ajax({
			url: '/hotel/review.do',
			type: 'GET',
			data: 'method=reviewList&hotelCode=' + hotelCode + '&pageNum=' + (pageNum+1), // 다음 페이지 불러오기
			dataType: 'html',
			success: function(data) {
				// 리뷰 세팅
				$('#reviewList').append(data);
				
				// 더보기 버튼 활성화 여부
				 if(pageCnt == 0 || pageCnt == (pageNum+1)) { // 불러오는 다음 페이지가 마지막 페이지라면 버튼 숨김
					$('#btnMoreReview').css('display', 'none');	
				}
				
			},
			error: function(code) {
				alert(code.status);
			}
		});
		
		//calcHeight(); // iframe 높이 재조정
	}
	
	// 댓글달기 폼 보여주는 함수
	function showWriteCommentForm(reviewCode) {
		//alert('[in function] show form');
		
		// 일단 다른 열려있는 댓글폼과 리스트들을 모두 닫고
		$('.writeCommentFormRow').css('display', 'none');
		$('.commentListRow').css('display', 'none');
		$('.showMoreCommentBtnRow').css('display', 'none');
		
		// 내가 현재 선택한 것만 연다.
		$('#review'+reviewCode+' .writeCommentFormRow').css('display', 'table-row');
	}
	
	// 댓글 목록 불러오는 함수
	function showReviewComment(reviewCode) {
		showWriteCommentForm(reviewCode);
		
		var pageNum = Number($('#review'+reviewCode+' .commentListRow .cmtPageNum').last().val());
	
		if(isNaN(pageNum)) {
			//alert('pageNum is nan.(' + pageNum + ')');
			pageNum = 0;
		}
		
		// alert('method=reviewCommentList&reviewCode=' + reviewCode + '&pageNum=' + (pageNum + 1));
		// ajax로 댓글리스트 불러오기
		$.ajax({
			url : '${conPath }/review.do',
			type : 'GET',
			data : 'method=reviewCommentList&reviewCode=' + reviewCode + '&pageNum=' + (pageNum + 1), // 다음 페이지 불러오기
			dataType : 'html',
			success : function(data) {
				
				// 리뷰 댓글 목록 세팅
				$('#review'+reviewCode+' .commentListRow td').append(data);
	
				// 더보기 버튼 활성화 여부
				var pageCnt = $('#review'+reviewCode+' .cmtPageCnt').val();
				
				if (pageCnt == (pageNum+1)) { // 현재 페이지(페이지를 새로 불러왔으니 pageNum+1이 현재 페이지)가 마지막 페이지라면 버튼 숨김
					$('#review'+reviewCode+' .showMoreCommentBtnRow').css('display', 'none');
				}
	
			},
			error : function(code) {
				alert(code.status);
			}
		});
		
		$('#review' + reviewCode + ' .commentListRow').css('display', 'table-row');
		$('#review' + reviewCode + ' .showMoreCommentBtnRow').css('display', 'table-row');
	
	}
	
	// 대댓글 폼 여는 함수
	function showReplyCommentForm(reviewCmtCode) {
		// alert('reply');
		$('.replyCommentForm').css('display', 'none');
		$('#comment'+reviewCmtCode+' .replyCommentForm').css('display', 'block');
	}
	
	// 후기 수정 다이얼로그 띄우는 함수
	function modifyReview(reviewCode) {
		$.ajax({
			url: '${conPath }/review.do',
			type: 'GET',
			data: 'method=modifyReviewForm&reviewCode='+reviewCode,
			dataType: 'json',
			success: function(data) {
				// 다이얼로그 창 세팅
				$('[name="reserveCode"]').val(data.reserveCode);
				$('[name="reviewCode"]').val(data.reviewCode);
				$('[name="hotelCode"]').val(data.hotelCode);
				$('[name="reviewTitle"]').val(data.reviewTitle);
				$('[name="reviewScore"]').val(data.reviewScore);
				$('[name="reviewContent"]').val(data.reviewContent);
				
				var reviewFileName = data.reviewFile;
				if(reviewFileName != 'review_noImg.jpg') {
					$('#rvFileShow').val(reviewFileName);
				} else {
					$('#rvFileShow').val('파일 선택');
				}
				
				var nowScore = $('[name="reviewScore"]').val(); // 수정할 리뷰의 별점 가져오기
				
				// 다이얼로그창에 슬라이더 세팅
				var slider = $( "#slider" ).slider({
				      value: nowScore,
				      min: 0,
				      max: 5,
				      step: 0.5,
				      slide: function( event, ui ) {
				    	$('[name="reviewScore"]').val(ui.value); // 파라미터에 별점 세팅
				    	
				        var width = (ui.value / 5) * 100; // 별점이 표시될 너비 계산
				        $('#cover').css('width', width+'%'); // 별점만큼 너비 출력
				      }
				    });
				
				// 현재 별점이 수정창에 표시되도록 세팅
				var nowWidth = (nowScore / 5) * 100; // 별점이 표시될 너비 계산
				$('#cover').css('width', nowWidth+'%'); // 너비만큼 노란 별 출력
				
				$('#dialog-form').dialog('open');
				
			},
			error: function(code) {
				alert(code.status);
			}
		});
	}
	
	// 리뷰 삭제하는 함수
	function deleteReview(reviewCode, hotelCode) {
		if(confirm('리뷰를 삭제하시겠습니까?')) {
			location.href='${conPath }/review.do?method=deleteReview&reviewCode=' + reviewCode + '&hotelCode=' + hotelCode;	
		}
	}
	
	// 후기작성시 파일첨부 이름 보여주는 로직
	function showFileName(file) {
		var fileName = file.split('\\').pop();
		var fileShow = document.getElementById('rvFileShow');
		fileShow.value = fileName;
	}
	

</script>

	<section>
		<!-- 리뷰 목록 나오는 영역 -->
		<div id="reviewList"></div>
		
		<!-- 리뷰 더보기 버튼 -->
		<button id="btnMoreReview" onclick="showMoreReview()">더보기 ∨</button>
		
		<!-- 리뷰 수정 다이얼로그 -->
		<div id="dialog-form" title="후기 수정">
			<form action="${conPath }/review.do" method="post" enctype="multipart/form-data" id="reviewModifyForm">
				<input type="hidden" name="method" value="modifyReview">
				<input type="hidden" name="guestId" value="${modifyReview.guestId }">
				<input type="hidden" name="reserveCode">
				<input type="hidden" name="reviewCode">
				<input type="hidden" name="hotelCode">
				<table>
					<tr>
						<th>제목</th>
						<td><input type="text" name="reviewTitle" required="required"></td>
					</tr>
					<tr>
						<td colspan="2" id="reviewScoreCell">드래그하여 별점을 입력해 주세요.
							<input type="hidden" name="reviewScore" required="required" >
							<div id="slider"><div id="cover"></div></div>
						</td>
					</tr>
					<tr>
						<td colspan="2"><textarea name="reviewContent" required="required"></textarea></td>
					</tr>
					<tr>
						<th>사진첨부<br>(5MB까지 첨부가능)</th>
						<td>
							<input type="text" disabled="disabled" id="rvFileShow">
							<label for="rvFileName">찾아보기</label>
							<input type="file" name="rvFileName" id="rvFileName" onchange="showFileName(this.value)">
						</td>
					</tr>
				</table>
			</form>
		</div>
	</section>
