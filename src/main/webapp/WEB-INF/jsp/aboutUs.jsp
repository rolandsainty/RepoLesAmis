<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><spring:message code="menu.aboutus" /></title>
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
		<h1 class="bleu"><spring:message code="aboutus.title" /></h1>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-4">
				<div class="panel panel-primary">
					<div class="panel-heading clearfix">
						<h3 class="panel-title">
							<span class="pull-left"><spring:message code="aboutus.phone" /></span> <span
								class="glyphicon glyphicon-phone-alt pull-right"> </span>
						</h3>
					</div>
					<div class="panel-body">
						<p><spring:message code="aboutus.day" /></p>
						<p class="text-info">02 28 03 17 28</p>
					</div>
					<div class="panel-footer">
						<span><small><spring:message code="aboutus.contact" /></small></span>
					</div>
				</div>
			</div>

			<div class="col-xs-12 col-sm-4">
				<div class="panel panel-primary">
					<div class="panel-heading clearfix">
						<h3 class="panel-title">
							<span class="pull-left"><spring:message code="aboutus.contact.choice" /></span> <span
								class="glyphicon glyphicon-envelope pull-right"> </span>
						</h3>
					</div>
					<div class="panel-body panel-body-info">

						<p>
							8 rue Léo Lagrange <br> ZAC de la Conterie<br> 35131
							Chartres-de-Bretagne
						</p>
						<p>
							<span class="glyphicon glyphicon-phone-alt pull-right"> </span>
						</p>
						<p>
							<a href="mailto:ecole@eni-ecole.fr">ecole@eni-ecole.fr</a>
						</p>

					</div>
				</div>
			</div>

			<div class="col-xs-12 col-sm-4">
				<div class="panel panel-primary">
					<div class="panel-heading clearfix">
						<h3 class="panel-title">
							<span class="pull-left"><spring:message code="aboutus.contact.social.network" /></span> <span
								class="glyphicon glyphicon-link pull-right"> </span>
						</h3>
					</div>

					<div class="panel-body panel-body-info">



						<div class="col-xs-6 text-center">
							<p></p>
							<p>
								<a target="in"
									href="https://fr.linkedin.com/school/eni-ecole-informatique/"
									style="text-decoration: none;"><span
									style="font: 80% Arial, sans-serif; color: #0783B6;"><img
										src="img/icone-in.png" width="36" height="36"
										alt="Voir le profil LinkedIn de ENI Ecole"
										style="vertical-align: middle;" border="0"></span></a>
							</p>
							<p>
								<a target="in"
									href="https://fr.linkedin.com/school/eni-ecole-informatique/">Linked
									In</a>
							</p>
						</div>

					</div>
					<p></p>
				</div>
			</div>

		</div>
	</div>


	<jsp:include page="footer.jsp" />


</body>
</html>