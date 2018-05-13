package com.bookadvisor.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bookadvisor.dao.LectorDAOImplementation;
import com.bookadvisor.dao.LibreriaDAOImplementation;
import com.bookadvisor.dao.model.Lector;
import com.bookadvisor.dao.model.Libreria;

@WebServlet ("/LoginServlet")
public class LoginServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email");
		String password = req.getParameter("password");

		Lector lector = LectorDAOImplementation.getInstance().login(email, password);
		Libreria publicista = LibreriaDAOImplementation.getInstance().login(email, password);
		
		if (null != lector) {
			req.getSession().setAttribute("lector", lector);
			resp.sendRedirect(req.getContextPath() + "/index.jsp");

		} else if (null != publicista) {
			req.getSession().setAttribute("publicista", publicista );
			resp.sendRedirect(req.getContextPath() + "/index.jsp");

		} else {
			resp.sendRedirect(req.getContextPath() + "/iniciarsesion.jsp");
		}
	}
}