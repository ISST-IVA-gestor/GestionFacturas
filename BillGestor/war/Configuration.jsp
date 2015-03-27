
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@page isELIgnored="false"%>


<html>
	<head>
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
	      	<div class="logout-contanier">
	        	<h3>Electronic Invoice Management</h3>
	            <a href="?logout=yes" class="logout-text">Log out</a>
	        	<img src="images/logout.png" class="logout">
	        </div>
    	</header>
    	<section class="row-alt">
    	</section>
		<div class="content">
			<section class="row-nav">
			<nav class="menu">
			<ul>
				<li><a href="/dashboard" >DashBoard</a></li>
				<li><a href="/chooseplan">Choose Plan</a></li>
				<li><a href="">Reports</a></li>
				<li class="active"><a href="">Configuration</a></li>
				<li><a href="">FAQ</a></li>
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
						<tr class="button-cell"><td><form action="" method="post" accept-charset="utf-8">
								<input class="btn-table" type="submit" name="delete" id="startup" value="DELETE">
					</form><td></tr>
					</table>	
				</section>
			<!--	</div> -->
			</div>
		</section>
		</div>
		<footer class="primary-footer container group">

      		<h3>G. E. E. F. T.</h3><h4>All rights reserved &copy;</h4>
      
    	</footer>			
