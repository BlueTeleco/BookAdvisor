package com.bookadvisor.servlets;

import java.io.IOException;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bookadvisor.dao.CriticaDAOImplementation;
import com.bookadvisor.dao.ExchangeDAOImplementation;
import com.bookadvisor.dao.FichaLibroDAOImplementation;
import com.bookadvisor.dao.model.Critica;
import com.bookadvisor.dao.model.Exchange;
import com.bookadvisor.dao.model.FichaLibro;
import com.bookadvisor.dao.model.Lector;

@WebServlet("/CreateExchangeServlet")
public class CreateExchangeServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String estado = request.getParameter("estado");
		String ISBN = request.getParameter("ISBN");
		String info = request.getParameter("info");
		String formato = request.getParameter("formato");
		 
		FichaLibro fl = (FichaLibro) request.getSession().getAttribute("fl");
		Lector lector = (Lector) request.getSession().getAttribute("lector");
		Exchange ex = new Exchange()
												.setEstado(estado)
												.setISBN(ISBN)
												.setInfo(info)
												.setFormato(formato)
												.setEmail(lector.getEmail())
												.setFl(fl);
		
		ExchangeDAOImplementation.getInstance().create(ex);
		

		Set<Exchange> lista = fl.getExchanges();
		lista.add(ex);
		fl.setExchanges(lista);
		FichaLibroDAOImplementation.getInstance().update(fl);
							

		response.sendRedirect(request.getContextPath()+"/PresentacionFichaLibro.jsp");
	}


}
