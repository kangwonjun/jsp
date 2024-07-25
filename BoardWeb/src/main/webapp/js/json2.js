/**
 * json2.js
 */
document.querySelector('div.container-fluid>div:nth-of-type(2)').remove();
document.querySelector('div.container-fluid>table').remove();



let json = `[{"id":1,"first_name":"Clerissa","last_name":"Espadate","email":"cespadate0@qq.com","gender":"Female","salary":1077},
{"id":2,"first_name":"Beltran","last_name":"Dinsey","email":"bdinsey1@uiuc.edu","gender":"Male","salary":7841},
{"id":3,"first_name":"Midge","last_name":"Ellor","email":"mellor2@google.com","gender":"Female","salary":1277},
{"id":4,"first_name":"Jacqueline","last_name":"Stallworth","email":"jstallworth3@cornell.edu","gender":"Female","salary":4576},
{"id":5,"first_name":"Arni","last_name":"Monshall","email":"amonshall4@eventbrite.com","gender":"Male","salary":8897},
{"id":6,"first_name":"Waly","last_name":"Halling","email":"whalling5@myspace.com","gender":"Female","salary":8051},
{"id":7,"first_name":"Allene","last_name":"O'Fallowne","email":"aofallowne6@issuu.com","gender":"Female","salary":1724},
{"id":8,"first_name":"Chad","last_name":"Dyball","email":"cdyball7@gov.uk","gender":"Male","salary":8284},
{"id":9,"first_name":"Julianna","last_name":"Cawood","email":"jcawood8@zimbio.com","gender":"Female","salary":3897},
{"id":10,"first_name":"Sibel","last_name":"Brokenshaw","email":"sbrokenshaw9@chronoengine.com","gender":"Female","salary":6493},
{"id":11,"first_name":"Keelia","last_name":"Sharman","email":"ksharmana@storify.com","gender":"Female","salary":1479},
{"id":12,"first_name":"Dicky","last_name":"Gorhardt","email":"dgorhardtb@tuttocitta.it","gender":"Male","salary":5693},
{"id":13,"first_name":"Moore","last_name":"Folkerd","email":"mfolkerdc@creativecommons.org","gender":"Male","salary":7216},
{"id":14,"first_name":"Nelle","last_name":"Haith","email":"nhaithd@statcounter.com","gender":"Female","salary":6662},
{"id":15,"first_name":"Bea","last_name":"Muge","email":"bmugee@privacy.gov.au","gender":"Female","salary":8918},
{"id":16,"first_name":"Emmit","last_name":"Tuther","email":"etutherf@loc.gov","gender":"Polygender","salary":2021},
{"id":17,"first_name":"Nichol","last_name":"Farrer","email":"nfarrerg@dot.gov","gender":"Female","salary":3390},
{"id":18,"first_name":"Helga","last_name":"Coulthard","email":"hcoulthardh@ted.com","gender":"Female","salary":3432},
{"id":19,"first_name":"Kassie","last_name":"Janota","email":"kjanotai@dedecms.com","gender":"Female","salary":7309},
{"id":20,"first_name":"Celisse","last_name":"Checo","email":"cchecoj@digg.com","gender":"Female","salary":4970}]`;

let employees = JSON.parse(json);
console.log(employees);

document.querySelector('#searchGender').addEventListener('change',function(e){
	initList();
})

function initList() {
	let target = document.getElementById('stdList');
	target.innerHTML = '';
	students.forEach(emp => {
			target.appendChild(makeRow(emp));
	});
}
initList();


//사원정보 => row 생성.
function makeRow(emp = {}) {
	let fields = ['stdNo', 'stdName'];
	let tr = document.createElement('tr');
	fields.forEach(field => {
		let td = document.createElement('td');
		td.innerHTML = emp[field];
		tr.appendChild(td);
	})
	return tr;
}

