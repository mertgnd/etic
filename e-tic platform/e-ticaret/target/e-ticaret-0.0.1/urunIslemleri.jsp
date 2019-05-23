<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page
	import="com.eticaret.model.*"
	import="com.eticaret.DAO.*"
%>
<% ArrayList<Urun> urunler = new ArrayList<Urun>(UrunDao.tumUrunleriGetir()); %>
<% ArrayList<Marka> markalar = new ArrayList<Marka>(MarkaDao.markalariGetir()); %>
<% ArrayList<Kategori> kategoriler = new ArrayList<Kategori>(KategoriDao.butunKategoriler()); %>
<!DOCTYPE html>
<html>
<head>
	<!-- HEADER İMPORT -->
</head>
<body>
	<%@ include file="navbar.jsp"%>
	
	
	<div style="width: 50%;float: left;">
			<form role="form" method="Post" action="UrunEkle" enctype="multipart/form-data">
				Ürün Adı : <input name="urunAd" type="text" /><br>
				Ürün Açıklama : <input name="urunAciklama" type="text" /><br>
				Ürün Fiyat :  <input name="urunFiyat" type="number" /><br>
				Ürün Miktar :  <input name="urunMiktar" type="number" /><br>
				
				Ürün Kategori :
				<select name="urunKategori">
					<%for(int i = 0; i < kategoriler.size(); i++){ %>
						<option value="<%= kategoriler.get(i).getKategoriId() %>"><%= kategoriler.get(i).getKategoriAdi() %></option>
					<%} %>
				</select>
				<br>
				Resim Yükle : <input type="file" name="resim">
				<button type="submit">Ekle</button>
			</form>
		</div>
		<div style="width: 50%;float: left;">
			
			<%for(int i = 0; i < urunler.size(); i++){ %>
				<br>Ürün Adı : <%= urunler.get(i).getUrunAd() %>
				<br>Ürün Fiyat : <%=urunler.get(i).getUrunFiyat() %>
				<br>Ürün Açıklama : <%=urunler.get(i).getUrunAciklama() %>
				<br><a href="UrunSil?sil=<%=urunler.get(i).getUrunId() %>"><button>Ürünü Sil</button></a> <!-- urun.jspye urunId alsın diye get gönder -->
				<br>
			<%} %>
		</div>
	
	

</body>
</html>