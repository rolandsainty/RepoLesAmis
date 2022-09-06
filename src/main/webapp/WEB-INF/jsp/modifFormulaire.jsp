<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Modification du Formulaire</title>
<link rel="stylesheet" href="bootstrap-3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
   href="bootstrap-3.3.7/css/bootstrap-theme.min.css">
<script src="js/jquery.min.js"></script>
<script src="bootstrap-3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/commun.css">
<link rel="icon" href="img/favicon.ico" />
</head>

<body class ="container-fluid">


   <jsp:include page="menu.jsp"></jsp:include>


<div class="container">
   <div class="jumbotron ">
      <h1>
         Mon Profil
      </h1>
      <form:form action ="/modifFormulaire" cssClass="form-horizontal" modelAttribute="user"
         method="POST">
         <div class="form-group">
            <form:label path="pseudo" cssClass="col-2 control-label"><spring:message code="inscription.login"/></form:label>
                <div class="col-xs-10">
               <form:input path="pseudo" cssClass="form-control" />
               <form:errors path="pseudo" cssClass="erreur"/>
             </div>
         </div>
         <div class="form-group">
            <form:label path="nom" cssClass="col-2 control-label"><spring:message code="inscription.name"/></form:label>
            <div class="col-xs-10">
               <form:input path="nom" cssClass="form-control"/>
            </div>
         </div>
            <div class="form-group">
            <form:label path="prenom" cssClass="col-2 control-label"><spring:message code="inscription.firstname"/></form:label>
            <div class="col-xs-10">
               <form:input path="prenom" cssClass="form-control"/>
            </div>
         </div>
         <div class="form-group">
               <form:label path="email" cssClass="col-2 control-label"><spring:message code="inscription.label.email"/></form:label>
               <div class="col-xs-10">
                  <form:input path="email" cssClass="form-control"/>
               </div>
            </div>
            <div class="form-group">
                    <form:label path="telephone" cssClass="col-2 control-label"><spring:message code="inscription.phone"/></form:label>
                    <div class="col-xs-10">
                        <form:input path="telephone" cssClass="form-control"/>
                    </div>
             </div>
             <div class="form-group">
                    <form:label path="rue" cssClass="col-2 control-label"><spring:message code="inscription.street"/></form:label>
                    <div class="col-xs-10">
                        <form:input path="rue" cssClass="form-control"/>
                    </div>
              </div>
              <div class="form-group">
                    <form:label path="codePostal" cssClass="col-2 control-label"><spring:message code="inscription.postcode"/></form:label>
                    <div class="col-xs-10">
                        <form:input path="codePostal" cssClass="form-control"/>
                    </div>
               </div>
               <div class="form-group">
                    <form:label path="ville" cssClass="col-2 control-label"><spring:message code="inscription.city"/></form:label>
                    <div class="col-xs-10">
                        <form:input path="ville" cssClass="form-control"/>
                    </div>
                </div>
               <!--TODO-->
                <div class="form-group">
                    <form:label path="motDePasse" cssClass="col-2 control-label"><spring:message code="inscription.pwd2"/></form:label>
                    <div class="col-xs-10">
                        <form:input path="motDePasse" cssClass="form-control"/>

                    </div>
                </div>
                <div class="form-group">
                    <form:label path="credit" cssClass="col-2 control-label"><spring:message code="afficher.credit"/></form:label>
                    <div class="col-xs-10">
                        <form:input path="credit" cssClass="form-control"/>
                    </div>
                </div>
           </div>
           </div>
           <div class="container fluid">
             <div class="form-group">
                <div>
                   <button type="submit" class="btn btn-primary" name="save" value="Save"><spring:message code="bouton.enregistrer"/></button>
                      <button type="submit" class="btn btn-primary" name="delete" value="Delete"><spring:message code="bouton.supprimerCompte"/></button>
                        <button  class="btn btn-primary" href="accueilInterne.jsp"><spring:message code="bouton.retour"/></button>
                     </div>
                 </div>
        </div>

</form:form>
  <jsp:include page="footer.jsp"></jsp:include>

</body>
</html>