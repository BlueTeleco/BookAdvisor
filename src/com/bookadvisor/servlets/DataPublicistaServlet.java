package com.bookadvisor.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bookadvisor.dao.CriticaDAOImplementation;
import com.bookadvisor.dao.NoticiaDAOImplementation;
import com.bookadvisor.dao.model.Critica;
import com.bookadvisor.dao.model.Lector;
import com.bookadvisor.dao.model.Libreria;
import com.bookadvisor.dao.model.Noticia;

@WebServlet("/DataPublicistaServlet")
public class DataPublicistaServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Libreria publicista = (Libreria) req.getSession().getAttribute("publicista");
		List<Noticia> noticias_titulo = NoticiaDAOImplementation
													.getInstance()
													.getAll()
													.stream()
													.filter(not -> not.getAutor().getNombre().equals(publicista.getNombre()))
													.collect(Collectors.toList());


		req.getSession().setAttribute("noticias_list", noticias_titulo);
		resp.sendRedirect(req.getContextPath()+ "/DatosPublicista.jsp");
	}
}