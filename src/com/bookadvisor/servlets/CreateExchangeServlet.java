package com.bookadvisor.servlets;

import java.io.IOException;
import java.util.List;

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
		Exchange ex = new Exchange();
		Lector l = new Lector();
		FichaLibro fl = (FichaLibro) request.getSession().getAttribute("fl");

		l = (Lector) request.getSession().getAttribute("lector");
		ex.setEstado(request.getParameter("estado"));
		ex.setISBN(request.getParameter("ISBN"));
		ex.setInfo(request.getParameter("info"));
		ex.setFormato(request.getParameter("formato"));
		ex.setEmail(l.getEmail());
		ex.setFl(fl);
		
		ExchangeDAOImplementation.getInstance().create(ex);
		

		List<Exchange> lista = fl.getExchanges();
		lista.add(ex);
		fl.setExchanges(lista);
		FichaLibroDAOImplementation.getInstance().update(fl);
							

		response.sendRedirect(request.getContextPath()+"/PresentacionFichaLibro.jsp");
	}


}
