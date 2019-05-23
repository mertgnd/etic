<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page
	import="com.eticaret.model.*"
	import="com.eticaret.DAO.*"
%>
<% ArrayList<Urun> urunler = new ArrayList<Urun>(UrunDao.tumUrunleriGetir()); %>
<!DOCTYPE html>
<html>
<head>
	<!-- HEADER İMPORT -->
</head>
<body>
		<%@ include file="navbar.jsp"%>
	
	<%for(int i = 0; i < urunler.size(); i++){ %>
		<br>Ürün Adı : <%= urunler.get(i).getUrunAd() %>
		<br>Ürün Fiyat : <%=urunler.get(i).getUrunFiyat() %>
		<br>Ürün Açıklama : <%=urunler.get(i).getUrunAciklama() %>
		<br><a href="urun.jsp?urunId=<%=urunler.get(i).getUrunId() %>"><button>Ürüne Git</button></a> <!-- urun.jspye urunId alsın diye get gönder -->
		<br>
	<%} %>
</body>
</html>