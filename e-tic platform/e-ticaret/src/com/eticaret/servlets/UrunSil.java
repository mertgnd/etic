package com.eticaret.servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eticaret.DAO.UrunDao;

@WebServlet("/UrunSil")
public class UrunSil extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		
		String id = request.getParameter("sil");//formdan gelen veri her zaman stringdir
		System.out.println("ID: " + id);
		if(id != null && !id.equals("")){
			try { 
				int urunId = Integer.parseInt(id); //string geleni idyi inte çevirdik
				UrunDao.urunSil(urunId);
			} catch (SQLException e) {
				System.out.println("error " + e);
				e.printStackTrace();
			}
		}
		response.sendRedirect("urunislemleri.jsp");
		
		
/*    --------------------------------------------------------------------------------
		Urun urun = new Urun(Integer.parseInt(request.getParameter("urunId")));
		try {
			int state = UrunDao.urunSil(urun);
			String message = (state == 1) ? "Seçilen ürün başarıyla kaldırıldı." : "İşlem sırasında bir hata oluştu";
			request.setAttribute("stateSilme", message);
			request.getRequestDispatcher("urun").forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	---------------------------------------------------------------------------------------
		
		//System.out.println(request.getParameter("sil"));
				int id = Integer.parseInt(request.getParameter("sil"));
				try {
					UrunDao.urunSil(id);
					request.getRequestDispatcher("urunler.jsp").forward(request, response);
					//response.sendRedirect("urunler.jsp");
				} catch (SQLException e) {
					
					e.printStackTrace();
				}
   ---------------------------------------------------------------------------------------
*/
		
	
	}		

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	

}
