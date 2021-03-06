
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@page isELIgnored="false"%>


<html>
	<head>
		<title>Dashboard</title>
		<link rel="stylesheet" type="text/css" href="css/main.css" />
		<script type="text/javascript" src="https://www.google.com/jsapi"></script>
   		<script type="text/javascript" src="/js/chart.js"></script>
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
			<li class="active" href="/dashboard"><a href="" >DashBoard</a></li>
			<li><a href="/chooseplan">Choose Plan</a></li>
			<li><a href="">Reports</a></li>
			<li><a href="/configuration">Configuration</a></li>
			<li><a href="">FAQ</a></li>
		</ul>
		</nav>
		</section>
		<section class="row-main">
	        <div class="col-50">
				<div class="wrapper">
					<h2> Welcome, <c:out value="${name}"/>!</h2></br>
		        	<h4> Check out current information about your account.</h4></br>
		        	<h4><u>ACCOUNT INFORMATION:</u></h4>
					<p>Domain: <c:out value="${domain}" /></p>
					<p>Product: <c:out value="${product}" /></p>
					<p>Current plan: <c:out value="${plan}" /></p>	
					<p>Warning email at: <c:out value="${warning}" /> remaining requests.</p>			
				</div>
				<div class="wrapper">
					<h4><u>REPORTS CHART:</u></h4>
					<p>Not available yet</p>
				</div>	
			</div>
			<div class="col-50">		
				<div class="wrapper">
					<h4><u>REMAINING REQUESTS CHART:</u></h4>
					<div id="chart_div"></div>
					<p>Your current plan is <c:out value="${plan}" />, and it includes <span id="nreqplan"><c:out value="${nreqplan}" /></span> requests.</p>
					<p>In that moment, you have available <span id="nreq"><c:out value="${nreq}" /></span> new requests.</p>		
				</div>
			</div>
			</div>
		</section>
		<footer class="primary-footer container group">

      		<h3>G. E. E. F. T.</h3><h4>All rights reserved &copy;</h4>
      
    	</footer>		