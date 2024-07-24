/**
 *  array1.js
 */

//수정 버튼에 클릭이벤트.
//document.getElementById('modBtn').addEventListener('click',funtion(e){
	
//})


const friends = [
	{ name: "홍길동", address: "대구 100번지", height: 170 },
	{ name: "김원준", address: "천안 200번지", height: 185 },
	{ name: "김수영", address: "평택 300번지", height: 179 },
]

makeList();

function makeList(){
	friends.forEach(function(friend){
		let tr = makeTr(friend);
		document.getElementById('list').appendChild(tr);
	})
}
//등록 버튼에 클릭 이벤트 추가
document.getElementById('addBtn').addEventListener('click',function(e){
	let name = document.getElementById('fname').value;
	let address = document.getElementById('faddress').value;
	let height = document.getElementById('height').value;
	if(!name || !address || !height){
		alert('값을 입력하시오');
		return;
	}
	let friend = {name,address,height};
	
	let tr = makeTr(friend);
	document.getElementById('list').appendChild(tr);
	
	alert('OK');
	fname.value='';
	faddress.value='';
	document.getElementById('height').value ='';
});

function makeTr(friend = {name:'Hong',address: 'Seoul',height:170}){
	function detailCallback(e){
		fname.value = friend.name;
		faddress.value = friend.address;
		document.getElementById('height') = friend.height;
	}
	//tr 만드는 부분
	let tr = document.createElement('tr');
	
	tr.addEventListener('click',detailCallback);
	
	for(let prop in friend){
		let td = document.createElement('td');
		td.innerHTML = friend[prop];
		tr.appendChild(td);
	}
	//삭제버튼
	let td = document.createElement('td');
	let btn = document.createElement('button');
	btn.setAttribute('class', 'btn btn-danger'); // <button>삭제</button>
	btn.addEventListener(`click`, function(e) {
		console.log(e);
		e.target.parentElement.parentElement.remove();
	});
	btn.innerHTML = '삭제';
	td.appendChild(btn);
	tr.appendChild(td);
	
	
	//체크박스 완성된 html은 --> <td><input type="checkbox"></td> 의 상위요소 tr에 붙히기.
	td = document.createElement('td');
	let inp = document.createElement('input');
	inp.setAttribute('type', 'checkbox');
	td.appendChild(inp);
	tr.appendChild(td);
	
    return tr;
}






