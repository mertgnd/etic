<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page
	import="com.eticaret.model.*"
	import="com.eticaret.DAO.*"
%>
<%
ArrayList<Urun> urunler = new ArrayList<Urun>(UrunDao.tumUrunleriGetir());
if(Integer.valueOf(request.getParameter("kategoriId")) > 0){
	urunler = new ArrayList<Urun>(UrunDao.tumUrunleriKategoriyeGoreGetir(Integer.valueOf(request.getParameter("kategoriId"))));
}
%>
<!-- Burada gördüğün gibi kategoriId bekliyor request ve bunu hiç kontrol etmeden direk Integer.par se ediyorsn
NULL bir değer parse etmeye kalkarsans Exception fırlatır yanlış yere yönlendirdiğin için null alıyorsn :D 

bu kalsın burda da. ben yönlendirmeyiğ kaldırdım belki yanlıştır diye o zman da silmedi sen düzelttin şimdi:D
Yok siliyormuş dostum. Ama biz hiç kaynak sayfayı yenilemedik ki sürekli 6 IDLı sil diyoruz hee6e e anladım
sqli delte from a where id = " + urunID+ " diye yazma. Sana bir açık göstecem var mı öyle başka yazdığın
göstersene :D bakalım :D sildin mi orayı nerdeydi urundeydi o sildim onu 
 -->
<!DOCTYPE html>
<html>
<head>
	<!-- HEADER IMPORT -->
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