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

<meta charset='utf-8'>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
</head>
<body>

	<jsp:include page="menu.jsp"/>

	<div class="container">
		<div class="jumbotron">
		    <span
                 style="font: 80% Arial, sans-serif; color: #0783B6;"><img
                 src="img/amis.png" width="200" height="200"
                 alt="Page accueil : Les amis"
                 style="vertical-align: middle;" border="0"></span>

                 <div  class="col-6 col-sm-6 col-md-12 col-lg-12 ps-12">
			<h2>
				<spring:message code="accueil.title" />
			</h2>
	<a role="button" href="login" class="btn btn-link"><spring:message code="accueil.lien.login" /></a>


<div class="col-12 col-sm-12 col-md-12 col-lg-12 ps-4">
    <div class="row">
			<div>

			<p>
				<spring:message code="accueil.filtreLabel" />
			</p>
			<ul>
				<spring:message code="accueil.title.nav" />



			<div class="input-group">
                                <div class="input-group-btn search-panel">
                                    <select class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                                        <option><spring:message code="accueil.placeholder.nav"/></option>
                                    </select>
 </ul>
                                    <input type="search" class="form-control rounded" placeholder=<spring:message code="accueil.InputSearch.placeholder"/> aria-label="Search" aria-describedby="search-addon" />
                                      <span class="input-group-text border-0" id="search-addon">
                                        <i class="fas fa-search"></i>
                                      </span>
                                </div>


                        </div>
                  </div>
<button class="dropdown-item" type="button"><spring:message code="accueil.boutton.validerInput"/></button>



		</div>
	</div>

	<jsp:include page="footer.jsp" />
</html>