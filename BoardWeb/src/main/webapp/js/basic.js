/**
 * basic.js
 */
console.log("basic.js");

let name = "강원준"
let address = "대구 수성구";
let age = 15;

//const myInfo = { nam, address, age }
const myInforAry = [name, address, age]






// createElement('span') => <span></span>.
// innerText/innnerHTML = 값.
// 부모.appendChild(자식) => <부모><자식/></부모>
makeDom();
function makeDom() {
	// for .. in ..

	//for (let prop in myInforAry) {
	myInforAry.forEach(function(prop) {
		let span = document.createElement('span');
		span.innerHTML = myInfo[prop] + '  ';
		document.getElementById('show').appendChild(span);
		console.log(span);

	})
	

console.log(`이름은 ${name}이고 주소는 ${address} 입니다. ${age > 20 ? '성년' : '미성년'} 입니다.`);
//`안쓰면 ${} 를 인식하지 못한다.
name = 20;
console.log(typeof name);


const obj = {
	name: "홍길동",
	age: 20,
	myInfo: function() {
		return this.name + ', ' + this.age;
	}

}
console.log(`이름은 ${obj.name}, 나이는 ${obj[`age`]}`);
console.log(obj.myInfo());

for (let prop in obj) {
	console.log(`속성은 ${prop}이고 값은 ${obj[prop]}`);
}


const ary = [1, 2, 3];
ary.push(4);     //뒤에 추가
ary.unshift(5); //제일앞에 추가
//5,1,2,3,4

for (let num of ary) {
	console.log(`값은 ${num}입니다.`);
}

ary.forEach(function(item, idx, ary) {
	if (item % 2 == 0) {
		console.log(item);
	}
});



ary.forEach(function(item, idx, ary) {
	if (idx % 2 == 0) {
		console.log(item);
	}
});


ary.forEach(function(item, idx, ary) {
	if (idx == 0 || idx == ary.length - 1) {
		console.log(item);
	}
});

const friends = [
	{ name: "홍길동", address: "대구 100번지", height: 170 },
	{ name: "김원준", address: "천안 200번지", height: 185 },
	{ name: "김수영", address: "평택 300번지", height: 179 },
]

friends.forEach(function(friends) {
	// friends정보를 한건씩 반복.
	for (let prop in friends) {
		console.log(prop + ' , ' + friends[prop]);
	}
	console.log(`------------------`);
});
}