
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@page isELIgnored="false"%>


<html>
	<head>
		<title>Configuration</title>
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
				<li class="active"><a href="/configuration">Configuration</a></li>
				<li><a href="">FAQ</a></li>
			</ul>
			</nav>
		 </section>
		<section class="row-main">
	        	<div class="title-window">
		        	<h2> Configuration </h2></br>
	            </div>
	            <div class="wrapper">
		        	<h4> If you wish to close your account, click the next button: </h4>
		        	<form action="" method="post" accept-charset="utf-8">
								<input class="btn btn-default" type="submit" name="delete" id="delete" value="REMOVE ACCOUNT">
					</form></br>
					<p>*You will lose all your data, plans and remaining requests</p>
					
				</div>	
				</section>
			</div>
		<footer class="primary-footer container group">

      		<h3>G. E. E. F. T.</h3><h4>All rights reserved &copy;</h4>
      
    	</footer>			
