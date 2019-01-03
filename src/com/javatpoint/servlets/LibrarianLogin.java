package com.javatpoint.servlets;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.javatpoint.dao.LibrarianDao;
@WebServlet("/LibrarianLogin")
public class LibrarianLogin extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		out.print("<!DOCTYPE html>");
		out.print("<html>");
		out.println("<head>");
		out.println("<title>Librarian Section</title>");
		out.println("<link rel='stylesheet' href='bootstrap.min.css'/>");
		out.println("</head>");
		out.println("<body>");
		
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		if(LibrarianDao.authenticate(email, password)){
			HttpSession oldsession = request.getSession(false);
			if (oldsession != null) {
				oldsession.invalidate();
				oldsession = null;
				}
			HttpSession session=request.getSession();
			session.setAttribute("email",email);
			session.setAttribute("librarian","true");
			//session.setMaxInactiveInterval(2*60);
			request.getRequestDispatcher("navlibrarian.jsp").include(request, response);
			request.getRequestDispatcher("librariancarousel.jsp").include(request, response);
			
		}else{
			request.getRequestDispatcher("navhome.jsp").include(request, response);
			out.println("<div class='container'>");
			out.println("<h3>Username or password error</h3>");
			request.getRequestDispatcher("librarianloginform.jsp").include(request, response);
			out.println("</div>");
		}
		
		
		request.getRequestDispatcher("footer.html").include(request, response);
		out.close();
	}

}
