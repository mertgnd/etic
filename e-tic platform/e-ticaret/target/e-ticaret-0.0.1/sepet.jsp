<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page
	import="com.eticaret.model.*"
	import="com.eticaret.DAO.*"
%>
<% ArrayList<Urun> sepet = new ArrayList<Urun> ((ArrayList<Urun>) request.getSession().getAttribute("sepet")); %>
<!DOCTYPE html>
<html>
<head>
	<!-- HEADER İMPORT -->
</head>
<body>
	<%@ include file="navbar.jsp"%>
	
		<%for(int i = 0; i < sepet.size(); i++){ %>
		<br>Ürün Adı : <%= sepet.get(i).getUrunAd() %>
		<br>Ürün Fiyat : <%=sepet.get(i).getUrunFiyat() %>
		<br>Ürün Açıklama : <%=sepet.get(i).getUrunAciklama() %>
		<br><a href="SepettenCikar?urunId=<%=sepet.get(i).getUrunId() %>"><button>Sepetten Çıkar</button></a>
		<br>
		
		
		<%} %>
		
		<a  href="SiparisTamamla">Satın Al</a>
	
</body>
</html>