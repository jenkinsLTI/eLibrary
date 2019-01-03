package com.javatpoint.servlets;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		out.print("<!DOCTYPE html>");
		out.print("<html>");
		out.println("<head>");
		out.println("<title>Admin Section</title>");
		out.println("<link rel='stylesheet' href='bootstrap.min.css'/>");
		out.println("</head>");
		out.println("<body>");
		
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		System.out.println("email"+email);
		if(email.equals("admin@lti.com")&&password.equals("admin123")){
			HttpSession osession = request.getSession(false);
			
			if (!osession.isNew()) {
				osession.invalidate();
				//osession = request.getSession();
				
			}
			
			//HttpSession oldsession = request.getSession(false);
			/*if (uname == null) {
			    response.sendRedirect("./login.jsp");
			}*/
			HttpSession session=request.getSession(true);
			
			String uniqueId= request.getParameter("uniqueId"); 
			session.setAttribute("admin"+uniqueId,true);
			//session.setAttribute("admin","true");
			session.setMaxInactiveInterval(30*60);
			Cookie userName = new Cookie("user", "admin");
			userName.setMaxAge(30*60);
			response.addCookie(userName);
			//userName.getS
			//session.setMaxInactiveInterval(2*60);
			request.getRequestDispatcher("navadmin.jsp").include(request, response);
			request.getRequestDispatcher("admincarousel.jsp").include(request, response);
			
		}else{
			//response.sendRedirect("index.jsp");
			request.getRequestDispatcher("navhome.jsp").include(request, response);
			out.println("<div class='container'>");
			out.println("<h3>Username or password error</h3>");
			request.getRequestDispatcher("adminloginform.jsp").include(request, response);
			out.println("</div>");
		}
		
		
		request.getRequestDispatcher("footer.html").include(request, response);
		out.close();
	}

}
