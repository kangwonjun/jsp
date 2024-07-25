/**
 *  array1.js
 */
//thead에 있는 체크박스 이벤트 등록
document.querySelector('div.container-fluid>table>thead input[type="checkbox"]')//
	.addEventListener('change', chaout);



function changeFnc(e) {
	console.log(e.target.checked);
	console.log(document.querySelectorAll('div.container-fluid >table>tbody input[type="checkbox"]:checked')
		.length);
	//찾으려는 대상 체크박스.
	document.querySelectorAll('div.container-fluid >table>tbody input[type="checkbox"]')//
		.forEach(function(item) {
			console.log(item);
			item.checked = e.target.checked;
		})
}// end of changeFnc(e)


//전체에서 하나 빼면 전체체크 해제 하기
function chaout(e) {
	let num1 = document.querySelectorAll('div.container-fluid >table>tbody input[type="checkbox"]').length;
	let num2 = document.querySelectorAll('div.container-fluid >table>tbody input[type="checkbox"]:checked').length;
	if (num1 == num2) {
		document.querySelector('div.container-fluid>table>thead input[type="checkbox"]').checked = true;
	} else {
		false;
	}
}


//수정 버튼에 클릭이벤트.
document.getElementById('modBtn').addEventListener('click', modBtnFnc);
//modBtnFnc 이벤트 핸들러.
function modBtnFnc(e) {

	document.querySelectorAll().forEach(function(e) {
		if (tr.children[0].innerHTML == document.querySelector('#fname').value) {
			tr.children[1].innerHTML == document.querySelector('#faddress');
			tr.children[2].innerHTML == document.querySelector('#height');
		}
	})
}


const friends = [
	{ name: "홍길동", address: "대구 100번지", height: 170 },
	{ name: "김원준", address: "천안 200번지", height: 185 },
	{ name: "김수영", address: "평택 300번지", height: 179 },
]


makeList();
function makeList() {
	friends.forEach(function(friend) {
		let tr = makeTr(friend);
		document.getElementById('list').appendChild(tr);
	})
}

//등록 버튼에 클릭 이벤트 추가
document.getElementById('addBtn').addEventListener('click', addBtnFnc);

//addBtnFnc 이벤트핸들러
function addBtnFnc(e) {
	let name = document.getElementById('fname').value;
	let address = document.getElementById('faddress').value;
	let height = document.getElementById('height').value;
	if (!name || !address || !height) {
		alert('값을 입력하시오');
		return;
	}
	let friend = { name, address, height };

	let tr = makeTr(friend);
	document.getElementById('list').appendChild(tr);

	alert('OK');
	fname.value = '';
	faddress.value = '';
	document.getElementById('height').value = '';
};


function detailCallback(e) {
	e.stopPropagation();
	console.log(e.target.parentElement);
	let tr = e.target.parentElement; // 이벤트 대상으로 tr영역을 찾아야함.
	//this : 1)함수영역에서 window 2) 이벤트 대상 3)객체에서는 객체.
	tr = this;
	document.getElementById('fname').value = tr.children[0].innerHTML;
	document.getElementById('faddress').value = tr.children[1].innerHTML;
	document.getElementById('height').value = tr.children[2].innerHTML;
}








//friend => tr 생성
function makeTr(friend = { name: 'Hong', address: 'Seoul', height: 170 }) {

	//tr 만드는 부분
	let tr = document.createElement('tr');
	tr.addEventListener('click', detailCallback, false);


	for (let prop in friend) {
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
		e.stopPropagation(); //click : button > td > tr > table....
		e.target.parentElement.parentElement.remove();
	}, false);
	btn.innerHTML = '삭제';
	td.appendChild(btn);
	tr.appendChild(td);


	//체크박스 완성된 html은 --> <td><input type="checkbox"></td> 의 상위요소 tr에 붙히기.
	td = document.createElement('td');
	let inp = document.createElement('input');
	inp.setAttribute('type', 'checkbox');
	inp.addEventListener('change', chaout)
	td.appendChild(inp);
	tr.appendChild(td);

	return tr;

	//선택삭제
	function delBtn() {

	}

}






