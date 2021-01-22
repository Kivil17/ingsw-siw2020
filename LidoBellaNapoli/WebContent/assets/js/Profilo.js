function cambia() {
    var valore = document.getElementById("daCambiare").textContent;
    var paragrafo= document.createElement("input");
    var testo = document.createTextNode(valore);
    console.log(testo);
    $.ajax({
        success: function () {
	        	paragrafo.appendChild(testo);
                document.getElementById("testo").appendChild(paragrafo);
	        },
	        error: function() {
	        	alert("Errore! Riprova !");
	        }
        
    });        ​​​​
}