<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="true"%>
<%@ page import="org.redhat.httpsession.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="https://developers.redhat.com/themes/custom/rhdp/favicon.ico">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Data Grid Demo - Http Session Counter</title>
<!-- Bootstrap core CSS -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<!-- Custom styles for this template -->
<link href="https://v4-alpha.getbootstrap.com/examples/cover/cover.css" rel="stylesheet">
<jsp:useBean id="counter" class="org.redhat.httpsession.Counter" scope="session" />
</head>
<body>
	<div class="site-wrapper">
		<div class="site-wrapper-inner">
			<div class="cover-container">
				<div class="masthead clearfix">
					<div class="inner">
					<h3 class="masthead-brand">User Session Data</h3>
					<nav class="nav nav-masthead">
						<a class="nav-link active" href="#">Home</a>
					</nav>
					</div>
				</div>
		
				<div class="inner cover">
					<h1 class="cover-heading">This is your session data</h1>
					
					<div class="alert alert-primary" role="alert">
						Counter is set at : <jsp:getProperty property="incrementedValue" name="counter" />
					</div>
					<div class="alert alert-info" role="alert">
						The request arrived at node : <%= System.getProperty("jboss.host.name") %>
					</div>

					<p class="lead">This data is being pulled from a Data Grid. By having the data layer reside external to JBoss EAP, different JBoss EAP instances can access shared data.</p>
					<p class="lead">This independence is a nice architectural design that protects your session data in the case of server containers crashing or recreating/patching an application server. It also has the advantage of keeping individual JBoss EAP instances lighter and free of heap usage.</p>
					<p class="lead">
					<a href="https://www.redhat.com/en/technologies/jboss-middleware/data-grid" class="btn btn-lg btn-secondary">Learn more</a>
					</p>
				</div>
		
				<div class="mastfoot">
					<div class="inner">
					<!-- Place this tag where you want the button to render. -->
					<p>Open source on github, <a class="github-button" href="https://github.com/dudash/eap-external-http-sessions" data-icon="octicon-star" data-size="large" aria-label="Star dudash/eap-external-http-sessions on GitHub">Star</a></p>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
