const Booking ={};

Booking.ombrelloneW = document.getElementById('ombrelloni-w');
Booking.ombrelloneSelezionato = document.getElementById('ombrelloneSelezionato');

Booking.messageStatus = document.getElementById('message-status');

(async function costruisciSpiaggia(){
	Booking.spiaggia = await fetch('spiaggia.json');
	Booking.spiaggia = await Booking.spiaggia.json();
	Booking.ombrelloni = Booking.spiaggia.ombrelloni;
	disponiOmbrelloni(Booking.ombrelloni);
})();

function disponiOmbrelloni(ombrelloni){

	ombrelloni.forEach((ombrellone,i) => {
		let classiOmbrellone = 'ombrellone', ombrelloneDOM = document.createElement('div');
	
		ombrelloneDOM.appendChild(document.createTextNode(i+1));
		classiOmbrellone += ombrellone.occupato ? ' occupato' : ' libero';

		ombrelloneDOM.setAttribute('class', classiOmbrellone);
		Booking.ombrelloneW.appendChild(ombrelloneDOM);

	});
}

Booking.ombrelloneW.addEventListener('click', (e) => {
	let selezionato = +e.target.textContent;
	if(Booking.ombrelloni[selezionato-1].occupato){
		Booking.messageStatus.textContent = 'Ombrellone '+selezionato+' è occupato.';
	}
	else{
		Booking.ombrelloneSelezionato.textContent += selezionato+',';
	}
});

document.forms[0].addEventListener('submit', (e) => {
	e.preventDefault();
	if(Booking.ombrelloneSelezionato.textContent == '-'){
		Booking.messageStatus.textContent = 'E necessario selezionare un ombrellone.';
		return
	}
	sendBooking();
});

function sendBooking(){
	let bookingForm = new FormData();
	bookingForm.append('ombrellone', +Booking.ombrelloneSelezionato.textContent);
	bookingForm.append('name', document.forms[0].name.value);
	bookingForm.append('email', document.forms[0].email.value);
	fetch('bookingScript', {
		body: bookingForm,
		method: 'post'
	});
	Booking.messageStatus.textContent = 'La prenotazione è andata a buon fine.';
	document.forms[0].reset();

}