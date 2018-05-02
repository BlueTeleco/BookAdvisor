package com.bookadvisor.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bookadvisor.dao.CriticaDAOImplementation;
import com.bookadvisor.dao.model.Critica;
import com.bookadvisor.dao.model.Lector;

@WebServlet("/CreateCriticaServlet")
public class CreateCriticaServlet extends HttpServlet {
       
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cuerpo = request.getParameter("cuerpo");
		String puntuacion = request.getParameter("rating");
		String titulo = request.getParameter("titulo");
				
		Critica critica = new Critica()
							.setAutor((Lector) request.getSession().getAttribute("lector"))
							.setTexto(cuerpo)
							.setPuntuacion(puntuacion)
							.setTitulo(titulo);
		
		CriticaDAOImplementation.getInstance().create(critica);
	}

}
