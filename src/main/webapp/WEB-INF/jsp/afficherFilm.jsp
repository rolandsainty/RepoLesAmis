<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title><spring:message code="yourmovie.title" /></title>
<link rel="stylesheet" href="bootstrap-3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="bootstrap-3.3.7/css/bootstrap-theme.min.css">
<script src="js/jquery.min.js"></script>
<script src="bootstrap-3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/commun.css">
<link rel="icon" href="img/favicon.ico" />


</head>
<body>
	<jsp:include page="menu.jsp"></jsp:include>

	<div class="container">
		<h1 class="bleu">
			<spring:message code="yourmovie.title" />
		</h1>
		<br> <br>
		<div>
			<form:form cssClass="form-horizontal" modelAttribute="film">
				<div class="form-group">
					<form:label path="titre" cssClass="col-xs-2 control-label">
						<spring:message code="allmovies.table.title" />
					</form:label>
					<div class="col-xs-10">
						<form:input path="titre" readonly="true" cssClass="form-control" />
					</div>
				</div>

				<div class="form-group">
					<form:label path="annee" cssClass="col-xs-2 control-label">
						<spring:message code="allmovies.table.date" />
					</form:label>
					<div class="col-xs-10">
						<form:input path="annee" readonly="true" cssClass="form-control" />
					</div>
				</div>

				<div class="form-group">
					<form:label path="style.id" cssClass="col-xs-2 control-label">
						<spring:message code="allmovies.table.style" />
					</form:label>
					<div class="col-xs-10">
						<form:input path="style.libelle" readonly="true"
							cssClass="form-control" />
					</div>
				</div>
				<div class="form-group">
					<form:label path="real.prenom" cssClass="col-xs-2 control-label">
						<spring:message code="allmovies.table.filmmarker" />
					</form:label>
					<div class="col-xs-5">
						<form:input path="real.prenom" readonly="true"
							cssClass="form-control" />
					</div>
					<div class="col-xs-5">
						<form:input path="real.nom" readonly="true"
							cssClass="form-control" />
					</div>
				</div>

				<div class="form-group">
					<form:label path="duree" cssClass="col-xs-2 control-label">
						<spring:message code="allmovies.table.duration" />
					</form:label>
					<div class="col-xs-10">
						<form:input path="duree" readonly="true" cssClass="form-control" />
					</div>
				</div>

				<c:choose>
					<c:when test="${film.vu}">
						<spring:message code="addmovies.yes" var="display" />
					</c:when>
					<c:otherwise>
						<spring:message code="addmovies.no" var="display" />
					</c:otherwise>
				</c:choose>
				<div class="form-group">
					<form:label path="vu" cssClass="col-xs-2 control-label">
						<spring:message code="allmovies.table.display" />
					</form:label>
					<div class="col-xs-10">
						<input id="vu" value="${display}" readonly class="form-control" />
					</div>
				</div>


				<c:forEach items="${ film.acteurs}" var="act" varStatus="status">
					<div class="form-group">
						<form:label path="duree" cssClass="col-xs-2 control-label">
							<spring:message code="addmovies.actor" /> ${status.index + 1} :</form:label>
						<div class="col-xs-5">
							<input name="acteurs[${status.index}].prenom" readonly
								value="${act.prenom}" class="form-control" />
						</div>
						<div class="col-xs-5">
							<input name="acteurs[${status.index}].nom" readonly
								value="${act.nom}" class="form-control" />
						</div>
					</div>
				</c:forEach>

				<div class="form-group">
					<form:label path="synopsis" cssClass="col-xs-2 control-label">Synopsis :</form:label>
					<div class="col-xs-10">
						<form:textarea path="synopsis" rows="5" readonly="true"
							cssClass="form-control" />
					</div>
				</div>

			</form:form>
		</div>
	</div>

	<jsp:include page="footer.jsp" />

</body>
</html>