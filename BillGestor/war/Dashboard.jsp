
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@page isELIgnored="false"%>


<html>
	<head>
		<title>Dashboard</title>
		<link rel="stylesheet" type="text/css" href="css/dashboard.css" />
				<link rel="stylesheet" type="text/css" href="/css/signup.css" />
		
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
			<li><a href="">DashBoard</a></li>
			<li><a href="">Choose Plan</a></li>
			<li><a href="">Reports</a></li>
			<li><a href="">Configuration</a></li>
			<li><a href="">FAQ</a></li>
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
				<p>Requests Remaining: <c:out value="${nreq}" /></p>
			</article>
			<article class="article2">
				Grafica Informes
			</article>			
			<article class="article3">
				Gráfica Peticiones
			</article>
			</div>
		</section>
		</div>
		<footer class="primary-footer container group">

      		<h3>G. E. E. F. T.</h3><h4>All rights reserved &copy;</h4>
      
    	</footer>		<!-- 
		<div style="clear: both;" />
		You have a total number of <c:out value="${fn:length(todos)}" />
		Todos.
	
		<table>
			<tr>
				<th>Short description</th>
				<th>Long Description</th>
				<th>URL</th>
				<th>Done</th>
			</tr>
	
			<c:forEach items="${todos}" var="todo">
				<tr>
					<td><c:out value="${todo.shortDescription}" /></td>
					<td><c:out value="${todo.longDescription}" /></td>
					<td><c:out value="${todo.url}" /></td>
					<td><a class="done"
						href="<c:url value="/done?id=${todo.id}" />">Done</a></td>
				</tr>
			</c:forEach>
		</table>
	
	
		<hr />
	
		<div class="main">
	
			<div class="headline">New todo</div>
	
			<c:choose>
				<c:when test="${user != null}">
					<form action="/new" method="post" accept-charset="utf-8">
						<table>
							<tr>
								<td><label for="summary">Summary</label></td>
								<td><input type="text" name="summary" id="summary" size="65" /></td>
							</tr>
							<tr>
								<td valign="description"><label for="description">Description</label></td>
								<td><textarea rows="4" cols="50" name="description"
										id="description"></textarea></td>
							</tr>
							<tr>
								<td valign="top"><label for="url">URL</label></td>
								<td><input type="url" name="url" id="url" size="65" /></td>
							</tr>
							<tr>
								<td colspan="2" align="right"><input type="submit"
									value="Create" /></td>
							</tr>
						</table>
					</form>
				</c:when>
				<c:otherwise>
	
	Please login with your Google account
				</c:otherwise>
			</c:choose>
		</div>
		-->
	</body>
</html>
