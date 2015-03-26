
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

	        <h3 class="tagline">Electronic Invoice Management</h3>
    	</header>
    	<section class="row-alt">
    	</section>
		<div class="content">
		<nav class="menu">
		<ul>
			<li class="active"><a href="" >DashBoard</a></li>
			<li><a href="/chooseplan">Choose Plan</a></li>
			<li><a href="">Reports</a></li>
			<li><a href="">Configuration</a></li>
			<li><a href="">FAQ</a></li>
			<li><a href="?logout=yes">Log Out</a></li>
		</ul>
		</nav>
		<section class="row">
	        <div class="lead container">
			<article class="article1">
				<h4>Client Information</h4>
				<p>Name: <c:out value="${name}" /></p>
				<p>Domain: <c:out value="${domain}" /></p>
				<p>Product: <c:out value="${product}" /></p>
				<p>Plan: <c:out value="${plan}" /></p>
				<p>Requests Remaining: <span id="nreq"><c:out value="${nreq}" /></span></p>
			</article>
			<article class="article2">
				<h4>Reports Chart</h4>
			</article>			
			<article class="article3">
				<h4>Requests Remaining Chart</h4>
				<div id="chart_div"></div>
			</article>
			</div>
		</section>
		</div>
		<footer class="primary-footer container group">

      		<h3>G. E. E. F. T.</h3><h4>All rights reserved &copy;</h4>
      
    	</footer>		