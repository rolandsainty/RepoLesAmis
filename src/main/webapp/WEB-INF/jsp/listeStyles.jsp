<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title><spring:message code="menu.movie.all.type" /></title>
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
			<spring:message code="styles.title" />
		</h1>
		<br> <br>

		<table class="table table-hover table-striped">
			<tr>
				<th><a href="sortStyle?by=iA"><span
						class="glyphicon glyphicon-menu-down"></span></a> id <a
					href="sortStyle?by=iD"><span
						class="glyphicon glyphicon-menu-up"></span></a></th>
				<th><a href="sortStyle?by=lA"><span
						class="glyphicon glyphicon-menu-down"></span></a> <spring:message
						code="styles.label" /><a href="sortStyle?by=lD"><span
						class="glyphicon glyphicon-menu-up"></span></a></th>
				<th></th>
				<th></th>
			</tr>
			<c:forEach items="${listeS}" var="s" varStatus="bStatus">
				<form action="updateStyle" method="Post">
				<tr>
					<td><input type="hidden" name="id" value="${s.id}" /></td>
					<td>${s.id}</td>
					<td><input type="text" name="libelle" required="required" value="${s.libelle}" />
					</td>
					<td class="centre">
						<button type="submit" class="glyphicon glyphicon-edit vert"></button>

					</td>
					<td class="centre"><a href="deleteStyle?index=${s.id}"> <span
							class="glyphicon glyphicon-remove rouge"></span>
					</a></td>
				</tr>
				</form>
			</c:forEach>
		</table>

		<br> <br> <br>
		<h2 class="bleu">
			<spring:message code="styles.new.title" />
		</h2>
		<div>
			<form:form action="addStyle" method="POST" cssClass="form-horizontal"
				modelAttribute="style">
				<div class="form-group">
					<div class="col-xs-10">
						<form:input path="libelle" cssClass="form-control" />
					</div>
					<div class="col-xs-2">
						<button type="submit" class="btn btn-primary pull-right">
							<spring:message code="addmovies.button" />
						</button>
					</div>
				</div>

			</form:form>
		</div>
	</div>

	<jsp:include page="footer.jsp" />
</body>
</html>