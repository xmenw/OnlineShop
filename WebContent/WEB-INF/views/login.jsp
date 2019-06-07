<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<jsp:useBean id="user" class="xyz.com.entity.Users" scope="request"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录</title>
<link rel="stylesheet" href="./res/css/bootstrap.css">
<style>
	.text-center {
		position: relative;
		top: 200px;
		padding: 30px 0px;
	}
	#img {
		position: absolute;
		top: -200px;
		left: 50%;
		transform: translateX(-45%);
	}
	
	:-webkit-full-screen {  
	  background-color: #fff !important;  
	} 
</style>
</head>
<body>
	<div class="container">
		<div class="text-center">
			<img src="./res/image/x1.png" id="img"/>
			<form action="index.jsp" method="post" class="form-horizontal" style="display:inline-block;">
		        	<input type="text" autocomplete="off" placeholder="<fmt:message key="user"></fmt:message>" name="username" class="form-control" id="user"><br>
		        	<input type="password" placeholder="<fmt:message key="pass"></fmt:message>" name="password" class="form-control" id="pwd"><br>
		        	<input type="submit" name="login" value="<fmt:message key="login"></fmt:message>" class="btn btn-success" style="margin-left:-60px;">
		    </form>
		    <form action="regist" method="get" style="display:inline-block; margin-left:-80px;">
		        	<input type="submit" class="btn btn-primary" value="<fmt:message key="regist"></fmt:message>">
		    </form>
	    </div>
    </div>
    <jsp:setProperty property="*" name="user"/>
    <script>
    	let lm = document.getElementsByClassName('container')[0];
    	user.onfocus = ()=>{
    		img.src = "./res/image/x2.png";
    	}
    	user.onblur = ()=>{
    		img.src = "./res/image/x1.png";
    	}
    	pwd.onfocus = ()=>{
    		img.src = "./res/image/x3.png";
    	}
    	pwd.onblur = ()=>{
    		img.src = "./res/image/x1.png";
    	}
    	user.onchange = ()=> {
    		console.log(user.value);
    		sessionStorage.setItem("user",user.value);	
    	}
    </script>
</body>
</html>