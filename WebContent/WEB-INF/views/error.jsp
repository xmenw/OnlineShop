<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>错误处理</title>
</head>
<body>
	您的页面发生了如下错误：
	<br/>
	${requestScope.error}
</body>
</html>