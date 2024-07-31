/*
 * 
*/


//접종센터 정보.
let centerAry = [];
console.log('1', centerAry);

url = 'https://api.odcloud.kr/api/15077586/v1/centers?page=1&perPage=10&serviceKey=77AwxdoBLvHf8mc8KGxV2Mw3HPGkhbxOlNRRuLpGpvsUga98hXjhT7JVlkS8FaRN1qjUNITQHfy%2BJXLMyOHiQg%3D%3D'

console.log('3', centerAry);

let arrayFunc = result => {
	console.log(result);
	centerAry = result.data;
	console.log('2', centerAry);

	//forEach, map, filter, reduce.
	let newAry = centerAry.filter(center => center.sido == '대구광역시');
	console.log(newAry);
	let field = ['id', 'centerName', 'address', 'phoneNumber']
	newAry.forEach(center => {
		let tr = document.createElement('tr');
		tr.addEventListener('click', function(e) {
		 location.href = 'map.jsp?lat='+center.lat+'&lng='+center.lng;
		 
		});
		for(let prop of field){
		   let td = document.createElement('td');
		   td.innerHTML = center[prop];
		   tr.append(td);	
		}
		document.querySelector('tbody').appendChild(tr);
	});
}	// end of arrayFunc.






fetch(url) // ajax.
	.then(result => result.json())
	.then(arrayFunc)
	.catch(err => console.errr('에러=>', err));