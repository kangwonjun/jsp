/**
 * boardJquery.js
 */
console.log('jquery start');

//등록버튼에 이벤트	
$('#addReply').on('click', function() {
	$.ajax({
		url: 'addReply.do',
		date: { replyer: replyer, content: $('#content').val() ,bno: bno},
		datetype: 'json',
		success: function(result) {
			console.log(result);
			let elem = result.retval;
			$('#replyList').prepend(makeRow(elem));
			$('#content').val('');
		}
	})
});

function makeRow(elem){
	// 등록하기위한 ajax
	let temp = $('#replyList li:eq(0)').clone();
	temp.attr('date-rno', elem.replyNo);
	temp.css('display', 'block'); //속성(attribute) 변경.
	temp.find('span:eq(0)').html(elem.replyNo);
	temp.find('span').eq(1).html(elem.replyCoutent);
	temp.find('span').eq(2).html(elem.replyer);
	// 버튼생성을 새로 생성한다...
	let btn = $('<button>삭제</button>').on('click', deleteRow)
	temp.find('span').eq(3).html(btn);
	return temp;	
}

let page = 1;

$.ajax({
	url: 'replyList.do', //서버url 호출
	date: { bno: bno, page: page }, //서버에 전달한 parameter(매개변수).
	datetype: 'json', //서버로 전달받은 content 타입.
	success: function(result) {
		console.log(result);
		$.each(result, function(i, elem) {
			let temp = $('#replyList li:eq(0)').clone();
			temp.attr('date-rno', elem.replyNo);
			temp.css('display', 'block'); //속성(attribute) 변경.
			temp.find('span:eq(0)').html(elem.replyNo);
			temp.find('span').eq(1).html(elem.replyCoutent);
			temp.find('span').eq(2).html(elem.replyer);
			// 버튼생성을 새로 생성한다...
			let btn = $('<button>삭제1</button>').on('click', deleteRow)
			temp.find('span').eq(3).html(btn);
			console.log("요기=>", i, elem);
			$('#replyList').append(makeRow(elem));
		})
	},
	error: function(err) {
		console.error(err);
	}
}); // $.ajax

function deleteRow() {
// 삭제하기위한 ajax
let li = $(this).parent().parent();
let rno = li.data('rno');
$.ajax({
	url: 'removeReply.do',
	data: { rno: rno },
	dataType: 'json',
	sussess: function() {
		console.log(result)
		if (result.retCode == 'Success') {
			li.remove();
		} else {
			alert('처리중 예외 발생');
		}
	},
	error: function() {
		console.lpg(err)
	}
});
$(this).parent().parent().remove()
}  // end of deleteRow.

