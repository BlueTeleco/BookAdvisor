package com.bookadvisor.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.connector.Request;

import com.bookadvisor.dao.LectorDAOImplementation;
import com.bookadvisor.dao.LibreriaDAOImplementation;
import com.bookadvisor.dao.model.Lector;
import com.bookadvisor.dao.model.Libreria;

@WebServlet ("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private final String ADMIN_EMAIL = "root";
	private final String ADMIN_PASSWORD = "root";

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String email = req.getParameter("email");
		String password = req.getParameter("password");

		Lector lector = LectorDAOImplementation.getInstance().login(email, password);
		Libreria publicista = LibreriaDAOImplementation.getInstance().login(email, password);
		Cookie ck = null;
		HttpSession sesionX = req.getSession(true);
		
		if (ADMIN_EMAIL.equals(email) && ADMIN_PASSWORD.equals(password) ) {
			ck = new Cookie("user", "root");
			resp.addCookie(ck);
			resp.sendRedirect(req.getContextPath() + "/index.jsp");
		} else if (null != lector) {
			ck = new Cookie("user", "lector");
			resp.addCookie(ck);
			
			sesionX.setAttribute("lectorX",lector );
			sesionX.setAttribute("name", lector.getNombre());
			sesionX.setAttribute("email", lector.getEmail());
			
			System.out.println("LoginServlet> sesionX:"+ sesionX.getAttributeNames());
			System.out.println("Verificación Lector loggeado:"+ sesionX.getAttribute("name"));
			
			resp.sendRedirect(req.getContextPath() + "/index.jsp");
		} else if (null != publicista) {
			ck = new Cookie("user", "publicista");
			resp.addCookie(ck);
				
			sesionX.setAttribute("name",publicista.getNombre());
			sesionX.setAttribute("email",publicista.getEmail());
			sesionX.setAttribute("web",publicista.getWeb());

			sesionX.setAttribute("publicistaX", publicista );
			
			System.out.println("LoginServlet> sesionX:"+ sesionX.getAttributeNames());
			System.out.println("Verificación Publicista loggeado:"+(Libreria) sesionX.getAttribute("publicistaX"));

			resp.sendRedirect(req.getContextPath() + "/index.jsp");
		} else {
			resp.sendRedirect(req.getContextPath() + "/iniciarsesion.jsp");
		}
	}

}