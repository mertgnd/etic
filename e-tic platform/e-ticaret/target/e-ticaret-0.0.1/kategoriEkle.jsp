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
			<form action="KategoriEkle" method="POST">
				Kategori Adı :  <input name="kategoriAdi" type="text" /><br>
				<button type="submit">Kategori Ekle</button>
			</form>
		</div>
	
		
</body>
</html>