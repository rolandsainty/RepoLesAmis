
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<a href="/" class="navbar-brand active"> <span
					<span
                    									style="font: 80% Arial, sans-serif; color: #0783B6;"><img
                    										src="img/amis.png" width="50" height="50"
                    										alt="Page acceuil : Les amis"
                    										style="vertical-align: middle;" border="0"></span>
				</a>
				<button class="navbar-toggle" type="button" data-toggle="collapse"
					data-target="#navbar-main">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>
			<div class="navbar-collapse collapse" id="navbar-main">
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown dropdown-submenu"><a href="/"><spring:message
								code="menu.home" /></a>

					<li><a href="inscription"><spring:message
								code="menu.inscription.label" /></a></li>
					<li><a href="connexion"><spring:message
								code="menu.connexion.label" /></a></li>

					<li><a href="aboutUs"><spring:message code="menu.aboutus" /></a></li>

					      <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                              <spring:message code="menu.navbar.drop.label" /></a>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                              <a class="dropdown-item" href="i18n?lg=fr"><spring:message
                                                                            code="menu.navbar.fr" /></a>
                              <div class="dropdown-divider"></div>
                              <a class="dropdown-item" href="i18n?lg=en"><spring:message
                                                                              code="menu.navbar.en" /></a>
                            </div>
                    </li>
				</ul>
			</div>
		</div>
	</nav>


