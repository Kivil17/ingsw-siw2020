let prezzoTotale=0;
let dim=0;

function aggiorna() {
		
		dim+=1;
		
		var nomeProdotto = document.getElementById("nome").value;
		var quantitaProdotto = document.getElementById("quantita").value;
		var prezzoProdotto = document.getElementById("prezzo").value;
	
		parseInt(prezzoTotale);
		parseInt(prezzoProdotto);
		prezzoTotale += prezzoProdotto
		
	
	
		document.getElementById("stotal").textContent = prezzoTotale;
	
		for(let i=0; i<dim; i++)
		{
			
		
			var table = document.getElementById(id_table);
		
			var tbody = table.getElementsByTagName('tbody')[i];
		
			var colonne = table.getElementsByTagName('th').length;
			
			var tr = document.createElement('tr');
		
		
			var td = document.createElement('td');
		
			var tx = document.createTextNode(nomeProdotto);
		
			td.appendChild(tx);
		
			tr.appendChild(td);
		
			var td = document.createElement('td');
		
			var tx = document.createTextNode(quantitaProdotto);
		
			td.appendChild(tx);
		
			tr.appendChild(td);
		
			var td = document.createElement('td');
		
			var tx = document.createTextNode(prezzoProdotto);
		
			td.appendChild(tx);
		
			tr.appendChild(td);
		
			var td = document.createElement('td');
		
			tr.appendChild(td);
		
			tbody.appendChild(tr);
		}


	/*
	  var body = document.getElementById("tbody");
	  var tr = document.createElement('tr');
	   	
	  y.innerHTML =
				  '<td>'+nomeProdotto+'</td>'
				 +'<td>'+quantitaProdotto+'</td>'
				 +'<td>'+prezzoProdotto+'</td>'
				 +'<td></td>';
			x.appendChild(y);		*/
}

function totale(){
	
	document.getElementById("stotal").textContent = prezzoTotale+5;
}