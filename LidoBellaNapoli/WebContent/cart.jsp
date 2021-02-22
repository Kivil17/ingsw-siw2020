<!DOCTYPE html>
<html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>

<title>Your Cart</title>
<meta charset="utf-8" />
<link href="assets/css/styleCarrello.css" rel="stylesheet">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
<script src="assets/js/carrello.js"></script>
<script src="assets/js/jquery.shop.js"></script>
<script src="https://www.gstatic.com/charts/loader.js"></script>
<link href="assets/img/bn.png" rel="icon">

</head>

<body onload="aggiorna()">

<div id="site">
	<header id="masthead">
		<div class="logo mr-auto">
				<h1 class="text-light">
					<img src="assets/img/bn.png" alt="" class="img-fluid"><span>  Ristorante Pizzeria Bella Napoli</span>
				</h1>
		</div>
	</header>
	<div id="content">
		<h1>Your Shopping Cart</h1>
		<form id="shopping-cart" action="cart.jsp" method="post">
			 
			 <input type="hidden" id="nome" value='<c:out value="${nomeProdotto}"/>' />
			 <input type="hidden" id="quantita" value='<c:out value="${quantitaProdotto}"/>' />
			 <input type="hidden" id="prezzo" value='<c:out value="${prezzoProdotto}"/>' />
			
			
			<div id="myDynamicTable">
				<table id="id_table" class="shopping-cart">
				  <thead>
					<tr>
						<th scope="col">Product</th>
						<th scope="col">Quantity</th>
						<th scope="col">Price</th>
					</tr>
				  </thead>
				  <tbody id="id_body">
						
				  </tbody>
				</table>
			
			
			</div>
			<p id="sub-total">
				
				<strong>Total: </strong> <span id="stotal2">&euro;<c:out value="${totaleOrdine}"/> </span>
				<input type="hidden" id="stotal" value="1"/>
			</p>
			<ul id="shopping-cart-actions">
				<!--<li>
					<input type="submit" name="delete" id="empty-cart" onload="svuotaCarrello()" class="btn" value="Empty Cart" />
				</li> -->
				<li>
					<a href="Menu.jsp" class="btn">Continue Shopping</a>
				</li>
			</ul>
		</form>
		
		<form action="" method="post" id="paypal-form">
		 	<h2>Your Details</h2>
		 	
		 	<fieldset id="fieldset-billing">
		 		<div>
		 			<label for="name">Name</label>
		 			<input type="text" name="name" id="name" data-type="string" data-message="This field cannot be empty" required/>
		 		</div>
		 		<div>
		 			<label for="email">Email</label>
		 			<input type="text" name="email" id="email" data-type="expression" data-message="Not a valid email address" required/>
		 		</div>
		 		<div>
		 			<label for="date">Date</label>
					<input type="date" value="2021-02-26" id="example-data-input" required/>
		 		</div>
		 	</fieldset>
		 	
		 	
				<input type="hidden" name="cmd" value="_cart" />
				<input type="hidden" name="upload" value="1" />
				<input type="hidden" name="business" value="" />
			        
				<input type="hidden" name="currency_code" value="" />
				
				<input type="submit" id="paypal-btn" class="btn" value="Pay with PayPal" />
			</form>
	</div>
	
	

</div>

<footer id="site-info">
		
		<div class="footer-top">
			<div class="container">
				
			</div>
		</div>

		<div class="container">
			<div class="copyright">
				&copy; Copyright <strong><span>1991</span></strong>. All Rights
				Reserved
			</div>
		</div>
</footer>

</body>
</html>	