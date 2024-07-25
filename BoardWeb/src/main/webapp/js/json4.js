/**
 * json4.js
 */
document.querySelector('div.container-fluid>div:nth-of-type(2)').remove();
document.querySelector('div.container-fluid>table').remove();

// Asynchronous Javascript And Xml (AJAX)
let studentList; 
let xntp = new XMLHttpRequest();
xntp.open('get', 'studentJson.do'); //특정페이지 요청.
xntp.send();
xntp.onload = function(e) {
	console.log(xntp.response);
	let json = xntp.response;
	studentList = JSON.parse(json);
	console.log(studentList);
	initList();

}



function initList() {
	let target = document.getElementById('stdList');
	target.innerHTML = '';
	studentList.forEach(emp => {
			target.appendChild(makeRow(emp));
			
	});
}
	

//사원정보 => row 생성.
function makeRow(emp = {}) {
	let fields = ['stdNo', 'stdName', 'stdPhone'];
	let tr = document.createElement('tr');
	tr.setAttribute('data-sno',emp.sdtNo);
	fields.forEach(field => {
		let td = document.createElement('td');
		td.innerHTML = emp[field];
		tr.appendChild(td);
	})
	
	//삭제버튼
	let td = document.createElement('td');
	let btn = document.createElement('button');
	btn.addEventListener(`click`, deleteRowFnc);
	btn.setAttribute('class','btn btn-danger');
	btn.innerHTML = '삭제';
	td.appendChild(btn);
	tr.appendChild(td);
	return tr;
}

function deleteRowFnc(e){
	console.log(e.target.parentElement.parentElement.firstChild.innerText);
	let tr = e.target.parentElement.parentElement;
	let sno = tr.firstChild.innerText;
	const delHtp = new XMLHttpRequest();
	delHtp.open('get', 'removeStudent.do?sno=' + sno);
	delHtp.send();
	delHtp.onload = function(e){
		let result = JSON.parse(delHtp.responseText); // {"retcode":"Success"}
		if (result.retCode == 'Success') {
			alert("성공!");
			tr.remove();
		} else if (result.retCode == 'Fail'){
			alert("관리자에게 문의하세요!");
		}
	}	
	
}

