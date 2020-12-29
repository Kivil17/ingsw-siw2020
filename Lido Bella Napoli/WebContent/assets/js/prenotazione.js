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