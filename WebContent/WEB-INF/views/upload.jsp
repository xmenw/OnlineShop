<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
     <form:form action="addShop" method="POST" enctype="multipart/form-data" modelAttribute="shop">
     	<form:input path="id"/>
     	<form:input path="username"/>
     	<form:input path="pic"/>
     	<form:input path="desc"/>
     	<form:input path="color"/>
     	<form:input path="size"/>
     	<form:input path="price"/>
     	<form:input path="num"/>
     </form:form>
     
</body>
</html>