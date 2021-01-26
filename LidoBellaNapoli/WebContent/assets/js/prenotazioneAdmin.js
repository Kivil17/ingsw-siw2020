
function caricaDati(id_table) {

	$.getJSON( //carica il JSON utilizzando una richiesta HTTP di tipo GET
		'./DatiTavoli.json',
		function(data) { //data contiene il JSON ottenuto dalla richiesta
			console.log(data);
			for (i = 0; i < data.length; i++) {

				var table = document.getElementById(id_table);

				var tbody = table.getElementsByTagName('tbody')[0];

				var colonne = table.getElementsByTagName('th').length;

				var tr = document.createElement('tr');


				var td = document.createElement('td');

				var tx = document.createTextNode(data[i].numeroTavolo);

				td.appendChild(tx);

				tr.appendChild(td);

				var td = document.createElement('td');

				var tx = document.createTextNode(data[i].nameUtente);

				td.appendChild(tx);

				tr.appendChild(td);

				var td = document.createElement('td');

				var tx = document.createTextNode(data[i].numeroPosti);

				td.appendChild(tx);

				tr.appendChild(td);
				
				var td = document.createElement('td');

				var tx = document.createTextNode(data[i].dataPrenotazione);

				td.appendChild(tx);

				tr.appendChild(td);
			
				tbody.appendChild(tr);
			}

        }
      );
}
