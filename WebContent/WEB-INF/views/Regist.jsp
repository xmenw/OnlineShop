<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "xyz.com.entity.Users"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注册</title>
<link rel="stylesheet" href="./res/css/bootstrap.css">
</head>
<body>
	<div class="container" style="margin-top: 200px;">
		<div class="text-center">
			 <form action="RegistServlet" method="post" class="form form-horizontal" style="display:inline-block;">
	        	<input type="text" name="name" autocomplete="off" placeholder="<fmt:message key="user"></fmt:message>" class="username form-control"><br>
	        	<input type="password" name="password" placeholder="<fmt:message key="pass"></fmt:message>" class="password form-control"><br>
	        	<input type="submit" name="regist" value="<fmt:message key="price"></fmt:message>" class="btn btn-success">
		     </form>
 		</div>
    </div>
</body>
<script type="text/javascript">
	let user = document.getElementsByClassName("username")[0];
	let password = document.getElementsByClassName("password")[0];
	let form = document.getElementsByClassName("form")[0];
	let btn = document.getElementsByClassName("btn")[0];

	btn.onclick = function(e){
		e.preventDefault();
		let userVal = user.value;
		let passVal = password.value;
		if(userVal && passVal){
			if(userVal.length <= 10){
				alert("用户名不能小于10位");
				return;
			}
			if(passVal.length <= 16){
				alert("密码不能小于16位");
				return;
			}
			if(!((/\d/gi).test(passVal) && (/[a-zA-Z]/gi).test(passVal))){
				alert("密码应包含字符和数字");
				return;
			}
			form.submit();
		}else {
			alert("用户名或密码不能为空");
			return;
		}
	}
</script>
</html>








