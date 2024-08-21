/**
 * basic.js
 */
//document.addEventListener('DOMContentLoaded', function() {
$(document).read(function(){
	// jquery객체 vs. dom 객체.
	let obj = $('.show');
	obj[0].innerHTML = 'Hello';
	obj.eq(0).html('Hello');
	obj.eq(1).html('World');
	//obj = document.getElememtById('show');
	console.log(obj);


	// jquery 객체 생성.
	// 삭제 버튼
	$('#show').append($('<button />').html('삭제')); //<button>삭제<button>
})	
	
//})

