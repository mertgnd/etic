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
			<form action="MusteriEkle" method="POST">
				Adı : <input name="musteriAdi" type="text" /><br>
				Soyadı : <input name="musteriSoyadi" type="text" /><br>
				Mail :  <input name="musteriMail" type="email" /><br>
				Şifre :  <input name="musteriSifre" type="password" /><br>
				Şehir :  <input name="musteriSehir" type="text" /><br>
				<button type="submit">Kayıt Ol</button>
			</form>
		</div>
		
		<div style="width: 50%;float: left;">
			<form action="MusteriLogin" method="POST">
				Mail :  <input name="musteriMail" type="email" /><br>
				Şifre :  <input name="musteriSifre" type="password" /><br>
				<button type="submit">Giriş Yap</button>
			</form>
		</div>
</body>
</html>