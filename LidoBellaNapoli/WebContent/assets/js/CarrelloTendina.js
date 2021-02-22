var listaProdotti=[];
var unica="";
function aggiungiCarrello(nomeProdotto,prezzoProdotto){
	
	
	var cont=0;
	var ul = document.getElementById("aggiungiElementi");
	var li = document.createElement('LI');
	var quantitaProdotto=1;
	
	if(listaProdotti.length>0)
	{
		var input = document.getElementById("stringaUnicaServlet");
		input.value= unica;
	}
	else{
		
		var input = document.createElement('INPUT');
		input.id="stringaUnicaServlet";
		input.name="stringaUnicaServlet";
		input.value= unica;
		input.type="hidden";
			
		ul.appendChild(input);
	}
	
	
	listaProdotti.push(nomeProdotto);
	
	for(let i=0; i<listaProdotti.length; i++)
	{
		if(listaProdotti[i] == nomeProdotto)
			cont++;
			
	}	
	
	if(cont<=1)
	{
			li.appendChild(document.createTextNode(nomeProdotto+" "+quantitaProdotto+" "+prezzoProdotto));
			ul.appendChild(li);
			precedente=nomeProdotto;
			li.id="stringaUnica";
			unica+=" "+nomeProdotto+" "+quantitaProdotto+" "+prezzoProdotto;
	}
	else{
		
	}	
	
	
}



/*function impostaInputTag(){
	
	var ul = document.getElementById("aggiungiElementi");
	var input = document.createElement('INPUT');
	
	input.name="stringaUnicaServlet";
	input.value= document.getElementById("stringaUnica").textContent;
	input.type="hidden";
	
	ul.appendChild(input);
	
}*/

/*function svuotaCarrello(){
	var ul = document.getElementById("aggiungiElementi");
	ul.removeChild(ul.firstElementChild());
}*/
