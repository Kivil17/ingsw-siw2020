function cambia() {
    ​​var input = document.getElementsByTagName('p');
    var valore = document.getElementById("daCambiare").textContent;
    if (input.id === "daCambiare")
    {​​​​
        var i = document.createElement("input");
        i.innerHTML = valore;
    }​​​​
}