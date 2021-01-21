const Booking ={};
Booking.numeroProdottiW = document.getElementById('numeroProdotti-w');
Booking.numeroProdotti = document.getElementById('numeroProdotti');


Booking.numeroProdottiW.addEventListener('click', (e) => {
	e.preventDefault();
	let numeroProdotti = +Booking.numeroProdotti.textContent;
	if(e.target.id === 'add' && numeroProdotti <=19){
		Booking.numeroProdotti.textContent = numeroProdotti + 1;
	}
	else if(e.target.id === 'sub' && numeroProdotti > 1){
		Booking.numeroProdotti.textContent = numeroProdotti - 1;
	}
});