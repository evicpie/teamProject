/**
 * reviewFrame과 그 하위 부속 페이지들 javascript
 */

	$(document).ready(function() {
		showMoreReview(); // 첫 댓글 페이지 세팅
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
				 if(pageCnt == (pageNum+1)) { // 불러오는 다음 페이지가 마지막 페이지라면 버튼 숨김
					$('#btnMoreReview').css('display', 'none');	
				}
				
			},
			error: function(code) {
				alert(code.status);
			}
		});
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
				
				if (pageCnt == (pageNum + 1)) { // 불러오는 다음 페이지가 마지막 페이지라면 버튼 숨김
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
			dataType: 'html',
			success: function(data) {
				$("#dialog-confirm div").html(data);
				$("#dialog-confirm").dialog({
					resizable : false,
					height : "auto",
					width : 400,
					modal : true,
					buttons : {
						"작성" : function() {
							// form submit 실행
							$('#reviewModifyForm').submit();
							
						},
						
						"닫기" : function() {
							$(this).dialog('close');
							//window.parent.jQuery(this).dialog('close');
							alert('닫아줘...');
						}
					}
				});
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