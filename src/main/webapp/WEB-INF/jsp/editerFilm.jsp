<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title><spring:message code="updatemovie.title" /></title>
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
			<spring:message code="updatemovie.title" />
		</h1>
		<br> <br>
		<div>
			<spring:message code="addmovies.lastname" var="placeholderLN" />
			<spring:message code="addmovies.firstname" var="placeholderFN" />
			<form:form action="update" method="POST" cssClass="form-horizontal"
				modelAttribute="film">
				<form:hidden path="id" />
				<div class="form-group">
					<form:label path="titre" cssClass="col-xs-2 control-label">
						<spring:message code="allmovies.table.title" />
					</form:label>
					<div class="col-xs-10">
						<form:input path="titre" placeholder="Titre du film ..."
							cssClass="form-control" />
					</div>
				</div>

				<div class="form-group">
					<form:label path="annee" cssClass="col-xs-2 control-label">
						<spring:message code="allmovies.table.date" />
					</form:label>
					<div class="col-xs-10">
						<form:input path="annee" cssClass="form-control" />
					</div>
				</div>

				<div class="form-group">
					<form:label path="style.id" cssClass="col-xs-2 control-label">
						<spring:message code="allmovies.table.style" />
					</form:label>
					<div class="col-xs-10">
						<form:select path="style.id" cssClass="form-control">
							<form:options items="${listeStyles}" itemValue="id"
								itemLabel="libelle" />
						</form:select>
					</div>
				</div>
				<div class="form-group">
					<form:label path="real.prenom" cssClass="col-xs-2 control-label">
						<spring:message code="allmovies.table.filmmarker" />
					</form:label>
					<div class="col-xs-5">
						<form:input path="real.prenom" placeholder="${placeholderFN }"
							cssClass="form-control" />
					</div>
					<div class="col-xs-5">
						<form:input path="real.nom" placeholder="${placeholderLN }"
							cssClass="form-control" />
					</div>
				</div>

				<div class="form-group">
					<form:label path="duree" cssClass="col-xs-2 control-label">
						<spring:message code="allmovies.table.duration" />
					</form:label>
					<div class="col-xs-10">
						<form:input path="duree" placeholder="minutes"
							cssClass="form-control" />
					</div>
				</div>
				<div class="form-group">
					<form:label path="vu" cssClass="col-xs-2 control-label">
						<spring:message code="allmovies.table.display" />
					</form:label>
					<div class="col-xs-10">
						<form:select path="vu" cssClass="form-control">
							<c:choose>
								<c:when test="${film.vu}">
									<option value="true" selected="selected"><spring:message
											code="addmovies.yes" /></option>
									<option value="false"><spring:message
											code="addmovies.no" /></option>
								</c:when>
								<c:otherwise>
									<option value="true"><spring:message
											code="addmovies.yes" /></option>
									<option value="false" selected="selected"><spring:message
											code="addmovies.no" /></option>
								</c:otherwise>
							</c:choose>
						</form:select>
					</div>
				</div>

				<c:forEach items="${ film.acteurs}" var="acteur" varStatus="status">
					<div class="form-group">
						<form:label path="duree" cssClass="col-xs-2 control-label">
							<spring:message code="addmovies.actor" /> ${status.index + 1} :</form:label>
						<div class="col-xs-5">
							<input name="acteurs[${status.index}].prenom"
								value="${acteur.prenom}" placeholder="${placeholderFN }"
								class="form-control" />
						</div>
						<div class="col-xs-5">
							<input name="acteurs[${status.index}].nom" value="${acteur.nom}"
								placeholder="${placeholderLN }" class="form-control" />
						</div>
					</div>
				</c:forEach>

				<div class="form-group">
					<form:label path="synopsis" cssClass="col-xs-2 control-label">Synopsis :</form:label>
					<div class="col-xs-10">
						<form:textarea path="synopsis" rows="5" cssClass="form-control" />
					</div>
				</div>

				<div class="form-group">
					<div class="col-xs-offset-2 col-xs-10">
						<button type="submit" class="btn btn-primary">
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