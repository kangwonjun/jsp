/**
 *  array1.js
 */




const friends = [
	{ name: "홍길동", address: "대구 100번지", height: 170 },
	{ name: "김원준", address: "천안 200번지", height: 185 },
	{ name: "김수영", address: "평택 300번지", height: 179 },
]
makeList();
function makeList(){
	// <tr><td>값1</td><td>값2</td><td>값3</td></tr>
	friends.forEach(function() {
	let tr = document.createElement('tr');
	for(let i = 1; i<=3; i++){
		let td = document.createElement('td');
		td.innerHTML = '값';
		tr.appendChild(td);		
	}
	document.getElementById('list').appendChild(tr);
	});
}