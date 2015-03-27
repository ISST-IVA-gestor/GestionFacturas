
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@page isELIgnored="false"%>


<html>
	<head>
	<script type="text/javascript">
   			function validate(form){
   				return confirm("You are trying to buy a new plan but you might have some requests left. \n \n Do you want to confirm?");
   			}
   		
   		</script>
		<title>Choose Plan</title>
		<link rel="stylesheet" type="text/css" href="css/main.css" />
		<meta charset="utf-8">
	</head>
	<body>				
			<!--  <h1>Hola <c:out value="${name}" /></h1>-->
		<header class="primary-header container group">
	        <div class="logo-box">
	        	<img src="images/logo.png" class="logo">
	      	</div>

	        <h3 class="tagline">Electronic Invoice Management</h3>
    	</header>
    	<section class="row-alt">
    	</section>
		<div class="content">
			<section class="row-nav">
			<nav class="menu">
			<ul>
				<li><a href="/dashboard" >DashBoard</a></li>
				<li class="active" href="/chooseplan"><a href="">Choose Plan</a></li>
				<li><a href="">Reports</a></li>
				<li><a href="/configuration">Configuration</a></li>
				<li><a href="">FAQ</a></li>
				<li><a href="?logout=yes">Log Out</a></li>
			</ul>
			</nav>
		 </section>
		<section class="row-main">
	  <!--      <div class="lead container"> -->
	        	<h1> Pricing plans </h1></br>
	        	<h4> Please, select the best plan for you! </h4>
	        	<div class="table-plan">
				<section class="col-1-3">
					<table class="plan">
						<tr class="first-cell"><td>STARTUP</td></tr>
						<tr class="request-cell"><td>100 requests</td></tr>
						<tr class="price-cell"><td>9,95 €</td></tr>
						<tr class="button-cell"><td>
					<!-- 	<form action="" method="post" accept-charset="utf-8">
							<input class="btn-table" type="submit" name="startup" id="startup" value="BUY NOW">
						</form> -->
						<form action="/startup" method="Post" onsubmit="return validate(this);">
   							 <input class="btn-table" type="submit" name="email" id="email" value="BUY NOW" >
						</form>
					<td></tr>
					</table>	
				</section>
				<section class="col-1-3">
					<table class="plan">
						<tr class="first-cell"><td>PREMIUM</td></tr>
						<tr class="request-cell"><td>1.000 requests</td></tr>
						<tr class="price-cell"><td>59,95 €</td></tr>
						<tr class="button-cell"><td>
						<form action="/premium" method="Post" onsubmit="return validate(this);">
   							 <input class="btn-table" type="submit" name="email" id="email" value="BUY NOW" >
						</form>
					<td></tr>
					</table>
				</section>
				<section class="col-1-3">
					<table class="plan">
						<tr class="first-cell"><td>GOLD</td></tr>
						<tr class="request-cell"><td>10.000 requests</td></tr>
						<tr class="price-cell"><td>299,95 €</td></tr>
						<tr class="button-cell"><td>
						<form action="/gold" method="Post" onsubmit="return validate(this);">
   							 <input class="btn-table" type="submit" name="email" id="email" value="BUY NOW" >
						</form>
					<td></tr>
					</table>
				</section>
			<!--	</div> -->
			</div>
		</section>
		</div>
		<footer class="primary-footer container group">

      		<h3>G. E. E. F. T.</h3><h4>All rights reserved &copy;</h4>
      
    	</footer>			
