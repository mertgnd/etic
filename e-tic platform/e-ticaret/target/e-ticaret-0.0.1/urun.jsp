<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page
	import="com.eticaret.model.*"
	import="com.eticaret.DAO.*"
%>
<% ArrayList<Urun> urun = new ArrayList<Urun>(UrunDao.tekUrunGetir(Integer.valueOf(request.getParameter("urunId"))));%> <!-- yolladığım urunIdyi alıp array listteki urune koy -->
<!DOCTYPE html>
<html>
<head>
	<!-- HEADER IMPORT -->
</head>
<body>
	<%@ include file="navbar.jsp"%>
	
		<br>Ürün Adı : <%= urun.get(0).getUrunAd() %>
		<br>Ürün Fiyat : <%=urun.get(0).getUrunFiyat() %>
		<br>Ürün Açıklama : <%=urun.get(0).getUrunAciklama() %>
		<br><img src="UrunResimGetir?urunResim=<%=urun.get(0).getUrunId() %>" alt="" style="height: 237px;"/>
		<br><a href="SepeteEkle?urunId=<%=urun.get(0).getUrunId() %>"><button>Sepete At</button></a>
		<br>
</body>
</html>