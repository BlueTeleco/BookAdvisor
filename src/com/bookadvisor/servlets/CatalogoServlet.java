package com.bookadvisor.servlets;

import java.io.IOException;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bookadvisor.dao.FichaLibroDAOImplementation;
import com.bookadvisor.dao.model.FichaLibro;

@WebServlet("/CatalogoServlet")
public class CatalogoServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<FichaLibro> result = FichaLibroDAOImplementation
									.getInstance()
									.getAll();

		req.getSession().setAttribute("list_all", result);
	    resp.sendRedirect(req.getContextPath() + "/catalogo.jsp");
	}
}
