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

<form:form action ="/afficherProfil" cssClass="form-horizontal" modelAttribute="user"
			method="GET">

    <div class="row">

    <div class="form-group">
        <form:label path="pseudo" cssClass="col-xs-2 control-label">
    						<spring:message code="inscription.label.login" />
    					</form:label>
    					<div class="col-xs-10">
    						<form:input path="pseudo" cssClass="form-control" />
    					</div>


    <spring:message code="afficherProfil.label.login"  arguments ="${user.pseudo}"/>
    </div>
<br>

    <spring:message code="afficherProfil.label.name"  arguments ="${user.nom}"/>
        </div>
<br>
    <spring:message code="afficherProfil.label.firstname"  arguments ="${user.prenom}"/>
            </div>
            <br>
        <spring:message code="afficherProfil.label.email"  arguments ="${user.email}"/>
                    </div>
                    <br>
           <spring:message code="afficherProfil.label.phone"  arguments ="${user.telephone}"/>
                            </div>
                            <br>
     <spring:message code="afficherProfil.label.street"  arguments ="${user.rue}"/>
                                    </div>
                                    <br>
       <spring:message code="afficherProfil.label.postcode"  arguments ="${user.codePostal}"/>
                                            </div>
                                            <br>
         <spring:message code="afficherProfil.label.city"  arguments ="${user.ville}"/>
                                                    </div>



    </form:form>







   <jsp:include page="footer.jsp"></jsp:include>

</body>
</html>