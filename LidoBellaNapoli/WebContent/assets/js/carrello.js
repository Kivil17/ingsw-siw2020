
var dim = 0;
var listaProdotti = [];
var listaQuantita = [];
var listaPrezzi = [];
var svuota=false;

/*google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(aggiorna);*/
//non si svuota il carrello
function svuotaCarrello(){
	svuota=true;
}

function aggiorna() {

	
		dim += 1;
		var nomeProdotto = document.getElementById("nome").value;
		var quantitaProdotto = document.getElementById("quantita").value;
		var prezzoProdotto = document.getElementById("prezzo").value;
	
		parseInt(prezzoProdotto);
	
		aggiungiProdotti(nomeProdotto, quantitaProdotto, prezzoProdotto);
	
	
		var myTableDiv = document.getElementById("myDynamicTable");
		var table = document.getElementById('id_table');
		
	
		var tableBody = document.getElementById('id_body');
		table.appendChild(tableBody);
	
		for (var i = 0; i < listaProdotti.length/*quanti prodotti nuovi aggiungo*/; i++) {
			var tr = document.createElement('TR');
			tableBody.appendChild(tr);
			
				var td = document.createElement('TD');
				td.appendChild(document.createTextNode(listaProdotti[i]));
				tr.appendChild(td);
				
				var td = document.createElement('TD');
				td.appendChild(document.createTextNode(listaQuantita[i]));
				tr.appendChild(td);
				
				var td = document.createElement('TD');
				td.appendChild(document.createTextNode(listaPrezzi[i]));
				tr.appendChild(td);
			
		}
		myTableDiv.appendChild(table);
	

}

function aggiungiProdotti(nomeP, quantitaP, prezzoP) {
	
	if(!svuota)
	{
		listaProdotti.push(nomeP);
		listaQuantita.push(quantitaP);
		listaPrezzi.push(prezzoP);
		
	}	
	else{
		listaPrezzi.pop();
		listaProdotti.pop();
		listaQuantita.pop();
	}

}

