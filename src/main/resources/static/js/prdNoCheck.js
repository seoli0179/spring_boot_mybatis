 $(document).ready(function(){

 	$('#prdNoCheck').on('click', function(){
 	
 		// submit 이벤트 기본 기능 : 페이지 새로 고침
 		// 기본 기능 중단
 		//event.preventDefault();
 		
 		var prdNo = $('#prdNo').val();
 		
 		$.ajax({
 			type:"post",
 			url:"/product/prdNoCheck",
 			data:{"prdNo":prdNo},
 			dataType:"text",
 			success:function(result){
 				// 성공 시 수행되는 함수 
 				// 반환되는 값을  result로 받음
 				if(!result) //null,undefined,NaN,empty string (""),0,false
 					alert("사용 가능한 상품번호입니다.");
 				else
 					alert("사용할 수 없는 상품번호입니다.");
 					
 			},
 			error:function(){
 				// 오류있을 경우 수행되는 함수
 				//alert("전송 실패");
 			},
 			complete:function(){
 				//alert("작업 완료");
 			}			
 		}); 	// ajax 끝
 	}); // submit 끝 
 });  // ready 끝