/**
 * myReservation.js
 */
$(document).ready(function() {

	// ajax로 구현하는 submit
	/*$('#btmMyReservationSubmit').click(function() {
		 alert('submit');
		 var post_url = $('#myReservationForm').attr('action');
		 var form_data = $('#myReservationForm').serialize(); // 폼에 입력된 데이터들을 파라미터 형태로 변환시켜주는 메소드!! WOW!!!!
		  
		  $.ajax({
			  url: post_url,
			  type: 'GET',
			  data: form_data,
			  dataType: 'html',
			  success: function(data) {
				  $('#ui-id-6').html(data);
				  $('#tabs').tabs('option','active', 2);
			  },
			  error: function(code) {
				  alert(code.status);
			  }
		  });
		  
	  });*/
});

// 예약 취소 다이얼로그 띄우는 함수
function cancelConfirm(reserveCode) {
	$.ajax({
		url: '${conPath }/reservation.do',
		type: 'GET',
		data: 'method=cancelConfirm&reserveCode='+reserveCode,
		dataType: 'html',
		success: function(data) {
			$("#dialog-confirm div").html(data);
			$("#dialog-confirm").dialog({
				resizable : false,
				height : "auto",
				width : 400,
				modal : true,
				buttons : {
					"예약 취소" : function() {
						// 취소 로직으로 이동
						location.href='${conPath }/reservation.do?method=cancelReservation&reserveCode='+reserveCode
						
					},
					"닫기" : function() {
						$(this).dialog("close");
						
					}
				}
			});
		},
		error: function(code) {
			alert(code.status);
		}
			
	});
}
