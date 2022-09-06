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
			<h2>
				<spring:message code="welcome.title" />
			</h2>


		<form:form action="connexion" method="POST" cssClass="form-horizontal"  name="loginForm" modelAttribute="user">

		<div class="form-group">
            <form:label path="pseudo" cssClass="col-xs-2 control-label"><spring:message code="inscription.label.login"/></form:label>
        					<div class="col-xs-10">
        						<form:input path="pseudo" cssClass="form-control" />
        						<form:errors path="pseudo" cssClass="erreur"/>
        					</div>
        </div>
        <div class="form-group">
           <form:label path="motDePasse" cssClass="col-xs-2 control-label"><spring:message code="inscription.label.pwd1" /></form:label>
                                       <div class="col-xs-10">
                                        		<form:input path="motDePasse" cssClass="form-control" />
                                        		<form:errors path="motDePasse" cssClass="erreur"/>
                                       </div>
        </div>



<div class="mx-auto">
                    <button type="submit"  class="btn btn-primary btn-lg" ><spring:message code="login.bouton.connexion" /></button>

                <div class="form-check">
                      <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                      <label class="form-check-label" for="flexCheckDefault"><spring:message code="login.case.remember"/></label>
                      <a role="button" href="accueilInterne" class="btn btn-link"><spring:message code="login.link.passwordForgotten" /></a>
                </div>


 </div>



<a type="button"  href="inscription" class="btn btn-primary btn-lg btn-block"><spring:message code="login.bouton.create" /></a>

                </div>


        </form:form>
    </div>
 </div>

        <jsp:include page="footer.jsp" />
        </html>