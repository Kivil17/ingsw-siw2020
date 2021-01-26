
numeroProdottiW = document.getElementById('numeroProdotti-w');
numeroProdotti = document.getElementById('numeroProdotti');


/*Booking.numeroProdottiW.addEventListener('click', (e) => {
	e.preventDefault();
	let num = +Booking.numeroProdotti.textContent;
	if(e.target.id === 'add'){
		Booking.numeroProdotti.textContent = num + 1;
	}
	else if(e.target.id === 'sub'){
		Booking.numeroProdotti.textContent = num - 1;
	}
});*/


function add(){
	let num = numeroProdotti.textContent;
	numeroProdotti.textContent = num + 1;
}

function sub(){
	let num = numeroProdotti.textContent;
	numeroProdotti.textContent = num - 1;
}