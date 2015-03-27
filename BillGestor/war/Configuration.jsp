
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@page isELIgnored="false"%>


<html>
	<head>
		<title>Dashboard</title>
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
		<nav class="menu">
		<ul>
			<li><a href="/dashboard" >DashBoard</a></li>
			<li class="active"><a href="">Choose Plan</a></li>
			<li><a href="">Reports</a></li>
			<li><a href="">Configuration</a></li>
			<li><a href="">FAQ</a></li>
			<li><a href="?logout=yes">Log Out</a></li>
		</ul>
		</nav>
		<section class="row">
	        <div class="lead container">
			<article class="article1">
				<form class="col" action="" method="post" accept-charset="utf-8">
					<input type="submit" name="delete" id="startup" value="DELETE">
				</form>
			</article>
			</div>
		</section>
		</div>
		<footer class="primary-footer container group">

      		<h3>G. E. E. F. T.</h3><h4>All rights reserved &copy;</h4>
      
    	</footer>		