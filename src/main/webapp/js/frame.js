$(document).ready(function(){
	
	// 화면 너비에 따라 일러스트의 left값을 계산하는 함수
	var defineIllustPosition = function() {
		var left; // left값
		var top; // top 값
		
		// left값 조정 부분
		if (document.body.clientWidth > 1890) { // 화면 너비가 1890보다 크면
			left = ((document.body.clientWidth-1890)/2)+1290; // 기본값 1290에 여백의 절반을 추가
		
		} else { // 화면 너비가 1820보다 작거나 같으면
			left = 1290; // 기본값 1290 유지
			
		}
		$('#illust').css('left', left + 'px'); // 계산한 left값 세팅
		
		
		// top값 조정 부분
		if(window.innerHeight<=1275){
		   	 top = ((window.innerHeight-956)/2)+250;
		   	 // console.log(top);
		 } else {
			 top = 600;
			 // console.log('height:'+window.innerHeight);
			 
		 }
		$('#illust').css('top', top+'px');
	};
	
	defineIllustPosition(); // 페이지 시작 시 일러스트의 left값을 한 번 결정해줌
	$(window).resize(defineIllustPosition); // 창을 리사이즈할 때 마다 left값 갱신
	
	
	// 화면을 우측으로 스크롤했을 때 일러스트가 잘리지 않도록 왼쪽 마진을 조정해주는 부분
	// (우측으로 갈수록 왼쪽 마진이 마이너스 되면서 오른쪽에 위치한 일러스트가 보이게 되는 원리... 인 듯 하다)
	var marginLeft = parseInt($('#illust').css('margin-left'));
 	$(window).scroll(function() {
		$('#illust').css('margin-left', (marginLeft - $(this).scrollLeft())+'px' );
	});
 
});
