package com.bookadvisor.servlets;

import java.io.IOException;

import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bookadvisor.dao.CriticaDAOImplementation;
import com.bookadvisor.dao.model.Lector;

@WebServlet("/DataLectorServlet")
public class DataLectorServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession sesion = (HttpSession) request.getSession();
		Lector lector = (Lector) sesion.getAttribute("lector");

		List<String> criticas_titulo = CriticaDAOImplementation.getInstance()
															   .getAll()
															   .stream()
															   .filter(crit -> crit.getAutor().equals(lector.getNombre()))
															   .map(crit -> crit.getTitulo() + ": " + crit.getTexto())
															   .collect(Collectors.toList());

		request.getSession().setAttribute("criticas_list", criticas_titulo);
		response.sendRedirect(request.getContextPath()+ "/DatosLector.jsp");
	}
}
