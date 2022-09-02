<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title><spring:message code="allmovies.title" /></title>
<link rel="stylesheet" href="bootstrap-3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="bootstrap-3.3.7/css/bootstrap-theme.min.css">
<script src="js/jquery.min.js"></script>
<script src="bootstrap-3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/commun.css">
<link rel="icon" href="img/favicon.ico" />

<style type="text/css">
.centre {
	text-align: center;
}

img {
	vertical-align: bottom;
}
</style>
</head>
<body>
	<jsp:include page="menu.jsp"></jsp:include>
	<div class="container">
		<h1 class="bleu">
			<spring:message code="allmovies.title" />
		</h1>
		<br> <br>
		<table class="table table-hover table-striped">
			<tr>
				<th><a href="sort?by=tA"><span
						class="glyphicon glyphicon-menu-down"></span></a> <spring:message
						code="allmovies.table.title" /><a href="sort?by=tD"><span
						class="glyphicon glyphicon-menu-up"></span></a></th>
				<th><a href="sort?by=aA"><span
						class="glyphicon glyphicon-menu-down"></span></a> <spring:message
						code="allmovies.table.date" /> <a href="sort?by=aD"><span
						class="glyphicon glyphicon-menu-up"></span></a></th>
				<th><a href="sort?by=sA"><span
						class="glyphicon glyphicon-menu-down"></span></a> <spring:message
						code="allmovies.table.style" /> <a href="sort?by=sD"><span
						class="glyphicon glyphicon-menu-up"></span></a></th>
				<th><a href="sort?by=rA"><span
						class="glyphicon glyphicon-menu-down"></span></a> <spring:message
						code="allmovies.table.filmmarker" /> <a href="sort?by=rD"><span
						class="glyphicon glyphicon-menu-up"></span></a></th>
				<th><a href="sort?by=dA"><span
						class="glyphicon glyphicon-menu-down"></span></a> <spring:message
						code="allmovies.table.duration" /> <a href="sort?by=dD"><span
						class="glyphicon glyphicon-menu-up"></span></a></th>
				<th><a href="sort?by=vA"><span
						class="glyphicon glyphicon-menu-down"></span></a> <spring:message
						code="allmovies.table.display" /> <a href="sort?by=vD"><span
						class="glyphicon glyphicon-menu-up"></span></a></th>
				<th></th>
				<th></th>
			</tr>

			<c:forEach items="${listeF}" var="f" varStatus="bStatus">
				<c:choose>
					<c:when test="${f.vu}">
						<spring:message code="addmovies.yes" var="displayF" />
					</c:when>
					<c:otherwise>
						<spring:message code="addmovies.no" var="displayF" />
					</c:otherwise>
				</c:choose>
				<tr>
					<td><a href="show?index=${f.id}">${f.titre}</a></td>
					<td>${f.annee}</td>
					<td>${f.style.libelle}</td>
					<td>${f.real.prenom}${f.real.nom}</td>
					<td>${f.duree}</td>
					<td>${displayF}</td>
					<td class="centre"><a href="update?index=${f.id}"><span
							class="modif glyphicon glyphicon-edit vert"></span> </a></td>
					<td class="centre"><a href="delete?index=${f.id}"><span
							class="glyphicon glyphicon-remove rouge supp"></span></a></td>
				</tr>
			</c:forEach>
		</table>


	</div>

	<jsp:include page="footer.jsp" />

</body>
</html>