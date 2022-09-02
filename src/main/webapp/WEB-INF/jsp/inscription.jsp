<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title><spring:message code="inscription.title" /></title>
<link rel="stylesheet" href="bootstrap-3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
   href="bootstrap-3.3.7/css/bootstrap-theme.min.css">
<script src="js/jquery.min.js"></script>
<script src="bootstrap-3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/commun.css">
<link rel="icon" href="img/favicon.ico" />

</head>
<body class ="container-fluid">

<header class="container">
    <div class="row">

    <div class="col-12 col-sm-12 col-md-12 col-lg-12 ps-4">
    <div class="row">


   <jsp:include page="menu.jsp"></jsp:include>

<form:form action="addUtilisateur" method="POST" cssClass="form-horizontal"  name="userForm" modelAttribute="user">

<div class="form-group">
    <form:label path="pseudo" cssClass="col-xs-2 control-label">
						<spring:message code="inscription.label.login" />
					</form:label>
					<div class="col-xs-10">
						<form:input path="pseudo" cssClass="form-control" />
						<form:errors path="pseudo" cssClass="erreur"/>
					</div>
</div>

<div class="form-group">
					<form:label path="nom" cssClass="col-xs-2 control-label">
						<spring:message code="inscription.label.name" />
					</form:label>
					<div class="col-xs-10">
						<form:input path="nom" cssClass="form-control" />
						<form:errors path="nom" cssClass="erreur"/>
					</div>
</div>
<div class="form-group">
					<form:label path="prenom" cssClass="col-xs-2 control-label">
						<spring:message code="inscription.label.firstname" />
					</form:label>
					<div class="col-xs-10">
						<form:input path="prenom" cssClass="form-control" />
						<form:errors path="prenom" cssClass="erreur"/>
					</div>
</div>

<div class="form-group">
                			<form:label path="email" cssClass="col-xs-2 control-label">
                						<spring:message code="inscription.label.email" />
                					</form:label>
                					<div class="col-xs-10">
                						<form:input path="email" cssClass="form-control" />
                						<form:errors path="email" cssClass="erreur"/>
                					</div>
</div>
<div class="form-group">
                              <form:label path="telephone" cssClass="col-xs-2 control-label">
                                	<spring:message code="inscription.label.phone" />
                              </form:label>
                               <div class="col-xs-10">
                                		<form:input path="telephone" cssClass="form-control" />
                                		<form:errors path="telephone" cssClass="erreur"/>
                               </div>
</div>

<div class="form-group">
                              <form:label path="rue" cssClass="col-xs-2 control-label">
                                	<spring:message code="inscription.label.street" />
                              </form:label>
                               <div class="col-xs-10">
                                		<form:input path="rue" cssClass="form-control" />
                                		<form:errors path="rue" cssClass="erreur"/>
                               </div>
</div>

<div class="form-group">
                              <form:label path="codePostal" cssClass="col-xs-2 control-label">
                                	<spring:message code="inscription.label.postcode" />
                              </form:label>
                               <div class="col-xs-10">
                                		<form:input path="codePostal" cssClass="form-control" />
                                		<form:errors path="codePostal" cssClass="erreur"/>
                               </div>
</div>

<div class="form-group">
                              <form:label path="ville" cssClass="col-xs-2 control-label">
                                	<spring:message code="inscription.label.city" />
                              </form:label>
                               <div class="col-xs-10">
                                		<form:input path="ville" cssClass="form-control" />
                                		<form:errors path="ville" cssClass="erreur"/>
                               </div>
</div>
<div class="form-group">
                              <form:label path="motDePasse" cssClass="col-xs-2 control-label">
                                	<spring:message code="inscription.label.pwd1" />
                              </form:label>
                               <div class="col-xs-10">
                                		<form:input path="motDePasse" cssClass="form-control" />
                                		<form:errors path="motDePasse" cssClass="erreur"/>
                               </div>
</div>
<div class="form-group">
                              <form:label path="motDePasse" cssClass="col-xs-2 control-label">
                                	<spring:message code="inscription.label.pwd2" />
                              </form:label>
                               <div class="col-xs-10">
                                		<form:input path="motDePasse" cssClass="form-control" />
                                		<form:errors path="motDePasse" cssClass="erreur"/>
                               </div>
</div>
</div>
</div>
</div>
</header>

<div class="col-12 col-sm-12 col-md-12 col-lg-12 ps-4">
    <div class="row">

<div>
					<div class="col-xs-offset-6 col-xs-10">

						<button type="submit"  class="btn btn-primary btn-lg" >
							<spring:message code="inscription.boutton.create" />

						</button>

                        <button type="reset" class="btn btn-primary btn-lg">
                    					<spring:message code="inscription.boutton.cancel" />
                    	</button>

                    </div>
			</div>
		</div>
	</div>
	</form:form>
	<main>
</main>



   <jsp:include page="footer.jsp"></jsp:include>

</body>
</html>