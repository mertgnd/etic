<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<!-- HEADER IMPORT -->
</head>
<body>
	<%@ include file="navbar.jsp"%>
	
		<div style="width: 50%;float: left;">
			<form action="AdminLogin" method="POST">
				Mail :  <input name="adminMail" type="email" /><br>
				Şifre :  <input name="adminSifre" type="password" /><br>
				<button type="submit">Giriş Yap</button>
			</form>
		</div>
		
		
</body>
</html>