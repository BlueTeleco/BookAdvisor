package com.bookadvisor.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bookadvisor.dao.LibreriaDAOImplementation;
import com.bookadvisor.dao.NoticiaDAOImplementation;
import com.bookadvisor.dao.model.Libreria;
import com.bookadvisor.dao.model.Noticia;

@WebServlet("/CreateNoticia ")
public class CreateNoticiaServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String titulo = req.getParameter("titulo");
		String autor = req.getParameter("pub_name");
		String cuerpo = req.getParameter("noticia");
		
		Libreria publicista = LibreriaDAOImplementation.getInstance().read(autor);
		
		Noticia noticia = new Noticia()
								.setAutor(publicista)
								.setTitulo(titulo)
								.setCuerpo(cuerpo);
		
		NoticiaDAOImplementation.getInstance().create(noticia);
		resp.sendRedirect(req.getContextPath() + "/index.jsp");
	}
}
