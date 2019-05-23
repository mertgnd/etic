<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.eticaret.model.*" import="com.eticaret.DAO.*"%>
<% request.setAttribute("siparisler",SiparisDao.tumSiparisleriGetir()); %><!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>
<body>
	<table class="footable table table-bordered toggle-circle">
		<thead>
			<tr>
				<th>Adı- Soyadı</th>
				<th>UrunAdi</th>
				<th>Adet</th>
				<th>Fiyat</th>
				<th>Veriliş Tarihi</th>
				<th>Tahmini teslim Tarihi</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${siparisler}" var="siparis">
				<tr>
					
					<td>${siparis.getMusteri_musteriId().getMusteriAdi()}- ${siparis.getMusteri_musteriId().getMusteriSoyadi()}</td>
					<td>${siparis.getUrun_urunId().getUrunAd()}</td>
					<td>${siparis.getAdet()}</td>
					<td>${siparis.getFiyat()}</td>
					<td>${siparis.getSiparisTarihi()}</td>
					<td>${siparis.getTeslimTarihi()}</td>
					<td><a href="SiparisSil?sil=${siparis.getSiparisId()}"><button>Ürünü Sil</button></td>
				</tr>
			</c:forEach>
		</tbody>

		<tfoot>
			<tr>
				<td colspan="10">
					<div class="pagination pagination-centered hide-if-no-paging"></div>
				</td>
			</tr>
		</tfoot>
	</table>


</body>
</html>