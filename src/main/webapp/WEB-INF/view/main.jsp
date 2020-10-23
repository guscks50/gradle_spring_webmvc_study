<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><spring:message code="main.title"/></title>
</head>
<body>
	<c:if test="${empty authInfo}">
		<p><spring:message code="main.welcome"/></p>
		<p>
			<a href="<c:url value="/register/step1" />"><spring:message code="main.injoin"/></a>
			 <a href="<c:url value="/login" />"><spring:message code="main.login"/></a>
		</p>
	</c:if>
	<c:if test="${!empty authInfo}">
		<p><spring:message code="main.done" arguments="${authInfo.name}"/></p>
		<p>
			<a href="<c:url value="/edit/changePassword" />"><spring:message code="main.changepassword"/></a> 
			<a href="<c:url value="/logout" />"><spring:message code="main.logout"/></a>
		</p>
	</c:if>
</body>
</html>