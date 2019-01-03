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
@WebServlet("/AddBookForm")
public class AddBookForm extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		out.print("<!DOCTYPE html>");
		out.print("<html>");
		out.println("<head>");
		out.println("<title>Add Book Form</title>");
		out.println("<link rel='stylesheet' href='bootstrap.min.css'/>");
		out.println("</head>");
		out.println("<body>");
		request.getRequestDispatcher("navlibrarian.jsp").include(request, response);
		 HttpSession session = request.getSession(false);
		 if (session == null) {   //checking whether the session exists
	        	response.sendRedirect("index.jsp");
	        }{
		out.println("<div class='container'>");
		request.getRequestDispatcher("addbookform.jsp").include(request, response);
		out.println("</div>");
	        }
		
		
		request.getRequestDispatcher("footer.html").include(request, response);
		out.close();
	}

}
