
numeroProdottiW = document.getElementById('numeroProdotti-w');
numeroProdotti = document.getElementById('numeroProdotti');


function add(){

	let numeroProdotti = +numeroProdotti.textContent;
	if(target.id === 'add' && numeroProdotti <=19)
		numeroProdotti.textContent = numeroProdotti + 1;
	
}

function sub(){

	let numeroProdotti = +numeroProdotti.textContent;
	if(target.id === 'sub' && numeroProdotti >=1)
		numeroProdotti.textContent = numeroProdotti - 1;
	
}
