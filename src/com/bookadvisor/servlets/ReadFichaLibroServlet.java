package com.bookadvisor.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bookadvisor.dao.FichaLibroDAOImplementation;
import com.bookadvisor.dao.model.FichaLibro;
 

@WebServlet("/ReadFichaLibroServlet")
public class ReadFichaLibroServlet extends HttpServlet {
       
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String titulo = request.getParameter("titulo");
		FichaLibro fl = (FichaLibro) FichaLibroDAOImplementation.getInstance().read(titulo);

		request.getSession().setAttribute("fl", fl);
		response.sendRedirect(request.getContextPath() + "/PresentacionFichaLibro.jsp");
	}
}
