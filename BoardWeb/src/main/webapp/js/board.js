/**
 * board.js
 */
let page = 1;


document.querySelector('#addReply').addEventListener('click',function(){
	let content = document.querySelector('#content').value;
	let parm = {bno, replyer, content};
	
	if(!replyer){
		alert("권한이 없습니다.");
		return;
	}
	if(!content){
		alert("값을입력해주세요");
		return;
	}
	
	svc.addRply(parm, function(){
		// 등록완료할경우 => 화면에 등록된 화면 추가
		let result = JSON.parse(this.responseText);
		console.log(result);
		if(result.retCode == "Success"){
			// 새로 작성한글은 맨앞에 있기에 페이징 맨앞으로 이동해주며 새로 그려주자
			svc.replyList({bno,page},function(){
				// 기존 목록 삭제
				replyList.querySelectorAll('li').forEach((li,idx) => {
					if(idx != 0){
						li.remove();
					}
				})
				// 글목록 그리기
				let result = JSON.parse(this.responseText);
				result.forEach(reply =>{
					replyList.appendChild(makeRow(reply));
				});
			});
		}else{
			alert("추가 실패");
		}
	});
});
// 댓글목록 출력.
function showPage(){
	
}

svc.replyList({bno,page},function(){
	// 페이지 로드하면서 목록을 출력.
	let result = JSON.parse(this.response);
	result.forEach(reply => {
		replyList.appendChild(makeRow(reply));
	});
	// 실제 데이터...출력.
	svc.pagingCount(bno, createPageList);
});

// reply => row 생성
function makeRow(reply = {}){
	let cloned = document
		.querySelector('div.reply>div.content li')
		.cloneNode(true); // li 의 하위 노드까지 카피하기위해 (true)를 작성한다.
	// 템플릿 용의 스타일을 수정하여 보이게한다.
	cloned.style.display = 'block';
	cloned.setAttribute('data-rno', reply.replyNo);
	cloned.querySelector('span:nth-of-type(1)')
		.innerText = reply.replyNo;
	cloned.querySelector('span:nth-of-type(2)')
		.innerText = reply.replyContent;
	cloned.querySelector('span:nth-of-type(3)')
		.innerText = reply.replyer;	
	cloned.querySelector('button')
		.addEventListener('click',deleteReplyFnc);
	return cloned;
}
function deleteReplyFnc(e){
	let li = e.target.parentElement.parentElement;
	let rno = li.dataset.rno;
	let replyReplyer = li.querySelector('span:nth-of-type(3)').innerText;
	
	if( replyer != replyReplyer){
		alert("권한이 없습니다.");
		return;
	}
	
	svc.removeRply(rno,function(e){
		let result = JSON.parse(this.responseText);
		if(result.retCode == "Success"){
			// 향후 페이징 기능이 완성되면 수정할것!
			document.querySelector(`li[data-rno="${rno}"]`).remove();
		}else{
			alert("삭제 실패");
		}
	})
}

// 페이지 a 태그 생성
function createPageList(event){
	console.log(this.responseText);
	let result = JSON.parse(this.responseText);
	let totalCnt = result.totalCount;
	// 현재 페이지를 기준으로 계산한 첫 페이지번호 ~ 마지막 페이지 번호
	let startPage, endPage;
	// 이전 , 이후 체크하는 변수
	let next, prev;
	let realEnd = Math.ceil(totalCnt/5);
	
	endPage = Math.ceil(page/10) * 10;
	startPage = endPage - 9;
	endPage = endPage > realEnd ? realEnd : endPage;
	
	prev = startPage > 1; // 이전 10개의 페이지를 구분.
	next = endPage < realEnd ? true : false;
	// 기존 html 지우기
	document.querySelector('ul.pagination').innerHTML = '';
	
	// 이전 10페이지 여부
	let li = document.createElement('li');
	li.className = 'page-item';
	//이전 페이지 존재여부
	if(prev){ // prev가 존재여부이다.
		let aTag = document.createElement('a');
		aTag.setAttribute('date-page', endPage -1);
		aTag.className = 'page-link';
		aTag.href = "#";
		aTag.innerHTML = 'prev';
		li.appendChild(aTag);
	}else{
		li.classList.add('disabled'); // li 요소의 클래스 추가.
		let span = document.createElement('span');
		span.className = 'page-link';
		span.innerHTML = 'prev';
		li.appendChild(span);
	}
	document.querySelector('ul.pagination')
		.appendChild(li);
	// 10 개출력<li class="page-item"><a class="page-link" href="#">1</a></li>
	for(let p = startPage; p <=endPage; p++){
		let li = document.createElement('li');
		li.className = 'page-item'; // 클래서 설정
		if(page == p){
			li.classList.add('active');
			let span = document.createElement('span');
			span.className = 'page-link';
			span.innerHTML = p;
			li.appendChild(span);

		}else{
			let aTag = document.createElement('a');
			aTag.setAttribute('date-page', endPage +1);
			aTag.className = 'page-link';
			aTag.href = "#";
			aTag.innerHTML = p;
			li.appendChild(aTag);
		}
		document.querySelector('ul.pagination')
				.appendChild(li);
	}// end of for.
	// 이후 10페이지 여부
	li = document.createElement('li');
	li.className = 'page-item';
	if(next){ // next가 존재여부이다.
		let aTag = document.createElement('a');
		aTag.className = 'page-link';
		aTag.href = "#";
		aTag.innerHTML = 'next';
		li.appendChild(aTag);
	}else{
		li.classList.add('disabled'); //li태그의 스타일을 비활성화. 
		let span = document.createElement('span');
		span.className = 'page-link';
		span.innerHTML = 'next';
		li.appendChild(span);
	}
	document.querySelector('ul.pagination')
		.appendChild(li);
		
 	// xormdml dlqpsxm emdfhr
 	pageMove();
}// end of createPageList

// 페이징 영역의 a 태그를 클릭하면
function pageMove(){
	document.querySelectorAll('div.reply ul.pagination a')
	.forEach(item => {
		// a태그에 클릭이벤트 등록
		item.addEventListener('click', function(e){
			page = item.innerHTML;
			svc.replyList({bno,page},function(){
				// 기존 목록 삭제
				replyList.querySelectorAll('li').forEach((li, idx) => {
					if(idx != 0){
						li.remove();
					}
				})
				
				// 글목록 그리기
				let result = JSON.parse(this.response);
				result.forEach(reply => {
					replyList.appendChild(makeRow(reply));
				});
				//페이지 새로 출력.
				svc.pagingCount(bno.createPageList);
			});
		}) //click event.
	});
}