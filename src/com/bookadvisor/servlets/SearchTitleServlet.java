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

@WebServlet("/SearchTitleServlet")
public class SearchTitleServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String query = req.getParameter("query");
		
		List<FichaLibro> result = FichaLibroDAOImplementation
														.getInstance()
														.getAll()
														.stream() //los pasa de lista a collection
														.filter(book -> book.getTitulo().contains(query))
														.collect(Collectors.toList()); //de collection a lista

	    resp.sendRedirect(req.getContextPath() + "/iniciarsesion.jsp");
	}
}
