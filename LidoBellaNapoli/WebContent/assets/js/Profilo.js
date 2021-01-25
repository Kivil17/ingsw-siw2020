function cambia() {
    var valore = document.getElementById("daCambiare").textContent;
    var paragrafo= document.createElement("input");
    var testo = document.createTextNode(valore);
    console.log(testo);
   	paragrafo.appendChild(testo);
    document.getElementById("t").appendChild(paragrafo);
	   
}