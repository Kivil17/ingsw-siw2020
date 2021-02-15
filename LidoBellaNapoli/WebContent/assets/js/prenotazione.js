const Booking = {};

Booking.numeroPersoneW = document.getElementById('numeroPersone-w');
Booking.numeroPersone = document.getElementById('numeroPersone');

Booking.tavoliW = document.getElementById('tavoli-w');
Booking.tavoloSelezionato = document.getElementById('tavoloSelezionato');
idTavolo = document.getElementById('selezionato');

Booking.messageStatus = document.getElementById('message-status');

(async function costruisciSala() {
	Booking.sala = await fetch('sala.json');
	Booking.sala = await Booking.sala.json();
	Booking.tavoli = Booking.sala.tavoli;
	disponiTavoli(Booking.tavoli);
})();


function disponiTavoli(tavoli) {

	tavoli.forEach((tavolo, i) => {
		let classiTavolo = 'tavolo', tavoloDOM = document.createElement('div');

		tavoloDOM.appendChild(document.createTextNode(i + 1));
		classiTavolo += tavolo.occupato ? ' occupato' : ' libero';
		if (tavolo.posti == 6)
			classiTavolo += ' x6';
		else if (tavolo.posti == 4)
			classiTavolo += ' x4';
		else if (tavolo.posti == 2)
			classiTavolo += ' x2';
		else if (tavolo.posti == 10)
			classiTavolo += ' x10';
		else if (tavolo.posti == 14)
			classiTavolo += ' x14';

		tavoloDOM.setAttribute('class', classiTavolo);
		Booking.tavoliW.appendChild(tavoloDOM);

	});
}

Booking.numeroPersoneW.addEventListener('click', (e) => {
	e.preventDefault();
	let numeroPersone = +Booking.numeroPersone.textContent;
	if (e.target.id === 'add' && numeroPersone <= 13) {
		Booking.numeroPersone.textContent = numeroPersone + 1;
	}
	else if (e.target.id === 'sub' && numeroPersone > 1) {
		Booking.numeroPersone.textContent = numeroPersone - 1;
	}
});

Booking.tavoliW.addEventListener('click', (e) => {
	e.preventDefault();

	let selezionato = +e.target.textContent;
	if (Booking.tavoli[selezionato - 1].occupato) {
		Booking.messageStatus.textContent = 'Il tavolo ' + selezionato + ' risulta occupato.';
	}
	else {

		Booking.messageStatus.textContent = ' ';
		Booking.tavoloSelezionato.textContent = selezionato;
		idTavolo.textContent = selezionato;

		if (selezionato == 1 && parseInt(Booking.numeroPersone.textContent) <= 6)
			Booking.messageStatus.textContent = 'Tavolo da 6 persone.';
		else if(selezionato == 1 && parseInt(Booking.numeroPersone.textContent) > 6)
		{
			Booking.tavoloSelezionato.textContent = '-';
			idTavolo.textContent = '-';
			Booking.messageStatus.textContent = 'Tavolo non disponibile troppe persone.';
		}
		if (selezionato == 2 && parseInt(Booking.numeroPersone.textContent) <= 4)
			Booking.messageStatus.textContent = 'Tavolo da 4 persone.';
		else if (selezionato == 2 && parseInt(Booking.numeroPersone.textContent) > 4){
			Booking.tavoloSelezionato.textContent = '-';
			idTavolo.textContent = '-';
			Booking.messageStatus.textContent = 'Tavolo non disponibile troppe persone.';
		}
		if (selezionato == 3 && parseInt(Booking.numeroPersone.textContent) <= 2)
			Booking.messageStatus.textContent = 'Tavolo da 2 persone.';
		else if (selezionato == 3 && parseInt(Booking.numeroPersone.textContent) > 2){
			Booking.tavoloSelezionato.textContent = '-';
			idTavolo.textContent = '-';
			Booking.messageStatus.textContent = 'Tavolo non disponibile troppe persone.';
		}
		if (selezionato == 4 && parseInt(Booking.numeroPersone.textContent) <= 4)
			Booking.messageStatus.textContent = 'Tavolo da 4 persone.';
		else if (selezionato == 4 && parseInt(Booking.numeroPersone.textContent) > 4){
			Booking.tavoloSelezionato.textContent = '-';
			idTavolo.textContent = '-';
			Booking.messageStatus.textContent = 'Tavolo non disponibile troppe persone.';
		}
		if (selezionato == 5 && parseInt(Booking.numeroPersone.textContent) <= 6)
			Booking.messageStatus.textContent = 'Tavolo da 6 persone.';
		else if (selezionato == 5 && parseInt(Booking.numeroPersone.textContent) > 6){
			Booking.tavoloSelezionato.textContent = '-';
			idTavolo.textContent = '-';
			Booking.messageStatus.textContent = 'Tavolo non disponibile troppe persone.';
		}
		if (selezionato == 6 && parseInt(Booking.numeroPersone.textContent) <= 6)
			Booking.messageStatus.textContent = 'Tavolo da 6 persone.';
		else if (selezionato == 6 && parseInt(Booking.numeroPersone.textContent) > 6){
			Booking.tavoloSelezionato.textContent = '-';
			idTavolo.textContent = '-';
			Booking.messageStatus.textContent = 'Tavolo non disponibile troppe persone.';
		}
		if (selezionato == 7 && parseInt(Booking.numeroPersone.textContent) <= 6)
			Booking.messageStatus.textContent = 'Tavolo da 6 persone.';
		else if (selezionato == 7 && parseInt(Booking.numeroPersone.textContent) > 6){
			Booking.tavoloSelezionato.textContent = '-';
			idTavolo.textContent = '-';
			Booking.messageStatus.textContent = 'Tavolo non disponibile troppe persone.';
		}
		if (selezionato == 8 && parseInt(Booking.numeroPersone.textContent) <= 4)
			Booking.messageStatus.textContent = 'Tavolo da 4 persone.';
		else if (selezionato == 8 && parseInt(Booking.numeroPersone.textContent) > 4){
			Booking.tavoloSelezionato.textContent = '-';
			idTavolo.textContent = '-';
			Booking.messageStatus.textContent = 'Tavolo non disponibile troppe persone.';
		}
		if (selezionato == 9 && parseInt(Booking.numeroPersone.textContent) <= 10)
			Booking.messageStatus.textContent = 'Tavolo da 10 persone.';
		else if (selezionato == 9 && parseInt(Booking.numeroPersone.textContent) > 10){
			Booking.tavoloSelezionato.textContent = '-';
			idTavolo.textContent = '-';
			Booking.messageStatus.textContent = 'Tavolo non disponibile troppe persone.';
		}
		if (selezionato == 10 && parseInt(Booking.numeroPersone.textContent) <= 14)
			Booking.messageStatus.textContent = 'Tavolo da 14 persone.';
		else if (selezionato == 10 && parseInt(Booking.numeroPersone.textContent) > 14){
			Booking.tavoloSelezionato.textContent = '-';
			idTavolo.textContent = '-';
			Booking.messageStatus.textContent = 'Tavolo non disponibile troppe persone.';
		}

}
});

/*document.forms[0].addEventListener('submit', (e) => {
	e.preventDefault();
	if(Booking.tavoloSelezionato.textContent == '-'){
		Booking.messageStatus.textContent = ' necessario selezionare un tavolo.';
		return
	}
	Booking.messageStatus.textContent = 'prenotazione confermata.';
	document.forms[0].reset();
	sendBooking();
});

function sendBooking(){
	let bookingForm = new FormData();
	bookingForm.append('numeroPersone', +Booking.numeroPersone.textContent);
	bookingForm.append('tavolo', +Booking.tavoloSelezionato.textContent);
	bookingForm.append('name', document.forms[0].name.value);
	bookingForm.append('email', document.forms[0].email.value);
	fetch('bookingScript', {
		body: bookingForm,
		method: 'post'
	});
	Booking.messageStatus.textContent = 'prenotazione confermata.';
	document.forms[0].reset();

}*/