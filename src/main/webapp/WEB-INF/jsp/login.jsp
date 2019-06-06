<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>Login</title>
<link type="text/css" rel="stylesheet" href="resource/res/css/login.css" />
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
	$(document).ready(function() {
		$(".btnLogin").click(function(){
			window.sessionStorage.setItem("id",$("#txtId").val());
			window.location.assign("/");
		});
	});
	
</script>
</head>
<body>
    <div class="center">
      <div class="title">Sharefolio</div>
      <div class="loginBox">
        <form action="/" method="post">
          <input type="text" class="txtLogin" placeholder="ID" id="txtId" />
          <input type="password" class="txtLogin" placeholder="Password" />
          <Button class="btnLogin">Login</Button>
          <Button class="btnSignUp">Sign Up</Button>
        </form>
      </div>
    </div>
</body>
</html>