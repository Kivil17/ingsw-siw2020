<!DOCTYPE html>
<html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>

<title>Your Cart</title>
<meta charset="utf-8" />
<link href="assets/css/styleCarrello.css" rel="stylesheet">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
<script src="assets/js/jquery.shop.js"></script>


</head>

<body>

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
			<table class="shopping-cart">
			  <thead>
				<tr>
					<th scope="col">Product</th>
					<th scope="col">Quantity</th>
					<th scope="col" colspan="2">Price</th>
				</tr>
			  </thead>
			  <tbody>
			  	<tr>
			  		<td class='pname'><c:out value="${nomeProdotto}"/></td>
			  		<td class='pqty'><input type='text' value='<c:out value="${quantitaProdotto}"/>' class='qty'/></td>
					<td class='pprice'><c:out value="${prezzoProdotto}"/></td>
					<td class='pdelete'><a href='' data-product='<c:out value="${nomeProdotto}"/>'>&times;</a></td>
				</tr>
					
			  </tbody>
			</table>
			<p id="sub-total">
				<strong>Sub Total:</strong> <span id="stotal"></span>
			</p>
			<ul id="shopping-cart-actions">
				<li>
					<input type="submit" name="delete" id="empty-cart" class="btn" value="Empty Cart" />
				</li>
				<li>
					<a href="Menu.jsp" class="btn">Continue Shopping</a>
				</li>
				<li>
					<a href="checkout.jsp" class="btn">Go To Checkout</a>
				</li>
			</ul>
		</form>
	</div>
	
	

</div>

<footer id="site-info">
		
</footer>

</body>
</html>	