<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><spring:message code="menu.home" /></title>
<link rel="stylesheet" href="bootstrap-3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="bootstrap-3.3.7/css/bootstrap-theme.min.css">
<script src="js/jquery.min.js"></script>
<script src="bootstrap-3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/commun.css">
<link rel="icon" href="img/favicon.ico" />


</head>
<body>

	<jsp:include page="menu.jsp"/>

	<div class="container">
		<div class="jumbotron">
		    <span
                 style="font: 80% Arial, sans-serif; color: #0783B6;"><img
                 src="img/amis.png" width="200" height="200"
                 alt="Page acceuil : Les amis"
                 style="vertical-align: middle;" border="0"></span>
			<h2>
				<spring:message code="welcome.title" />
			</h2>
			<p>
				<spring:message code="welcome.part1" />
			</p>
			<p>
				<spring:message code="welcome.part2" />
			</p>
			<p>
				<a class="btn btn-primary btn-lg" role="button" href="aboutUs"><spring:message
						code="menu.aboutus" /></a>

				<a class="btn btn-primary btn-lg" role="button" href="acceuil"><spring:message
                code="menu.enter" /></a>
			</p>

		</div>
	</div>

	<jsp:include page="footer.jsp" />
</html>