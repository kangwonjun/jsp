<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>exe1.jsp</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
</head>
<body>
	입력:<input id="userVal">
	<!-- val() -->
	<button id="addBtn">추가</button>
	<button id="oddBtn">3번째이후</button>
	<button id="evenBtn">사과4</button>
	

	<div id="show">
		<ul id="list">
			<li>사과1 <span>span</span><button>삭제</button></li>
			<li>사과2 <button>삭제</button></li>
			<li>사과3 <button>삭제</button></li>
			<li>사과4 <button>삭제</button></li>
			<li>사과5 <button>삭제</button></li>
			<li>사과6 <button>삭제</button></li>
			<li>사과7 <button>삭제</button></li>
		</ul>
	</div>
	<script>
 	$(document).ready(function(){
 		//이벤트 등록
		$('#addBtn').on('click', function(){
			//요소추가
		 	let newadd = $('<li />').html($('#userVal').val());	
			$('#list').append( newadd );
		})

    $(document).ready(function(){
 		//이벤트 등록
		$('#addBtn').on('click', function(){
			//요소추가
			let btn = $('<button>삭제</button>').on('click', function(){
				console.log(this);
				$(this).parent().hide(1000);
			}); // btn.
			let newElem = $('<li />').html($("#userVal").val() + " ")
														.append(btn);
 			$('#list').append( newElem );
			
		})
		
		//홀수.
		$('#oddBtn').on('click', function() {
			$('#list li:eq(2)').css('background','red');
		});
 		
		/*$('#evenBtn').on('click', function() {
			$('#list li:has(span)').css('background','blue');
		});*/
		
		$('#evenBtn').on('click', function() {
			$('#list li:not(:has(span))').css('background','blue');
		});
		
		$('#oddBtn').on('click', function() {
			$('#list li:gt(2)').css('background','red');
		})
		
	});
 });		
			
			
	</script>


</body>
</html>