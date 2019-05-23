package com.eticaret.servlets;

import java.io.IOException;
//import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eticaret.DAO.AdminDao;
import com.eticaret.model.Admin;

@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String adminMail = request.getParameter("adminMail");
		String adminSifre = request.getParameter("adminSifre");
		//Inputdan veriler alındı//
		
		if (adminMail != null && adminSifre != null) {
			//Inpular boş değilse
			Admin admin = AdminDao.getAdminGiris(adminMail, adminSifre);
			if (admin != null) {
				//Veri tabanında kayıt varsa
				request.getSession().setAttribute("admin", admin);//admin keyine admin valuesini at
				response.sendRedirect("adminIndex.jsp");
			} else {
				response.sendRedirect("admin.jsp"); //jsp sayfasına yönlen
			}
		} else {
			response.sendRedirect("index.jsp");
		}
	}

}