<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page
	import="com.eticaret.model.*"
	import="com.eticaret.DAO.*"
%>




<% ArrayList<Kategori> kategoriler_navbar = new ArrayList<Kategori>(KategoriDao.butunKategoriler()); %>

<a href="index.jsp">Ana Sayfa</a>
<%for(int i = 0; i < kategoriler_navbar.size(); i++){ %>
	<a href=urunler.jsp?kategoriId=<%= kategoriler_navbar.get(i).getKategoriId() %>><%= kategoriler_navbar.get(i).getKategoriAdi() %></option>
<%} %>
<%if(session.getAttribute("musteri") == null && session.getAttribute("admin") == null){ %>
	<a href="kullanici.jsp">Giriş & Kayıt</a>
<%}
if(session.getAttribute("musteri") != null || session.getAttribute("admin") != null){ %>
	<a href="sepet.jsp">Sepet</a>
	<a href="MusteriLogout">Oturum Kapat</a>
<%} %>
<%if(session.getAttribute("admin") != null){ %>
	<a href="admin.jsp">Yönetim Paneli</a>
	<a href="urunIslemleri.jsp">Ürün İşlemleri</a>
	<a href="kategoriEkle.jsp">Kategori İşlemleri</a>
<%}%>			