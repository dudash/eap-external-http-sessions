<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="true"%>
<%@ page import="org.redhat.httpsession.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Http Session Counter</title>
<jsp:useBean id="counter" class="org.redhat.httpsession.Counter" scope="session" />
</head>
<body>
	Counter is set at : <jsp:getProperty property="incrementedValue" name="counter" /> <br/>
    The request arrived at node : <%= System.getProperty("jboss.host.name") %>
</body>
</html>
