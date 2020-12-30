const Booking ={};

Booking.numeroPersoneW = document.getElementById('numeroPersone-w');
Booking.numeroPersone = document.getElementById('numeroPersone');

Booking.tavoliW = document.getElementById('tavoli-w');
Booking.tavoloSelezionato = document.getElementById('tavoloSelezionato');

Booking.messageStatus = document.getElementById('message-status');

(async function costruisciSala(){
	Booking.sala = await fetch('sala.json');
	Booking.sala = await Booking.sala.json();
	Booking.tavoli = Booking.sala.tavoli;
	disponiTavoli(Booking.tavoli);
})();

function disponiTavoli(tavoli){

	tavoli.forEach((tavolo,i) => {
		let classiTavolo = 'tavolo', tavoloDOM = document.createElement('div');
		tavoloDOM.appendChild(document.createTextNode(i+1));
		classiTavolo += tavolo.occupato ? ' occupato' : ' libero';
		if(tavolo.posti==6)
			classiTavolo+= ' x6';
		else if(tavolo.posti==4)
			classiTavolo+= ' x4';
		else if(tavolo.posti==2)
			classiTavolo+= ' x2';
		else if(tavolo.posti==10)
			classiTavolo+= ' x10';
		else if(tavolo.posti==14)
			classiTavolo+= ' x14';

		tavoloDOM.setAttribute('class', classiTavolo);
		Booking.tavoliW.appendChild(tavoloDOM);

	});
}

Booking.numeroPersoneW.addEventListener('click', (e) => {
	e.preventDefault();
	let numeroPersone = +Booking.numeroPersone.textContent;
	if(e.target.id === 'add'){
		Booking.numeroPersone.textContent = numeroPersone + 1;
	}
	else if(e.target.id === 'sub' && numeroPersone > 1){
		Booking.numeroPersone.textContent = numeroPersone - 1;
	}
});

Booking.tavoliW.addEventListener('click', (e) => {
	let selezionato = +e.target.textContent;
	if(Booking.tavoli[selezionato-1].occupato){
		Booking.messageStatus.textContent = 'Il tavolo ${selezionato} è occupato.';
	}
	else{
		Booking.tavoloSelezionato.textContent = selezionato;
	}
});

document.forms[0].addEventListener('submit', (e) => {
	e.preventDefault();
	if(Booking.tavoloSelezionato.textContent == '-'){
		Booking.messageStatus.textContent = 'E necessario selezionare un tavolo.';
		return
	}
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
	Booking.messageStatus.textContent = 'La prenotazione è andata a buon fine.';
	document.forms[0].reset();

}