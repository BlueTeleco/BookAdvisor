package com.bookadvisor.servlets;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bookadvisor.dao.CriticaDAOImplementation;
import com.bookadvisor.dao.model.Critica;
import com.bookadvisor.dao.model.FichaLibro;
import com.bookadvisor.dao.model.Lector;

@WebServlet("/CreateCriticaServlet")
public class CreateCriticaServlet extends HttpServlet {
       
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cuerpo = request.getParameter("cuerpo");
		String puntuacion = request.getParameter("rating");
		String titulo = request.getParameter("titulo");
		Lector autor = (Lector) request.getSession().getAttribute("lector");
		FichaLibro fl = (FichaLibro) request.getSession().getAttribute("fl");
		
		Critica critica = new Critica()
							.setAutor(autor.getNombre())
							.setTexto(cuerpo)
							.setPuntuacion(puntuacion)
							.setTitulo(titulo);
		
		CriticaDAOImplementation.getInstance().create(critica);
		
		System.out.println("autor: " +autor.getNombre());
		System.out.println("esta vacio? "+CriticaDAOImplementation.getInstance().getAll().isEmpty());
		System.out.println("critica "+CriticaDAOImplementation.getInstance());
		System.out.println("Autor de la critica: "+CriticaDAOImplementation.getInstance().read(autor.getNombre()));
		System.out.println("cuerpo de la critica: "+CriticaDAOImplementation.getInstance().read(autor.getNombre()).getTexto());
		System.out.println("Titulo de la critica: "+CriticaDAOImplementation.getInstance().read(autor.getNombre()).getTitulo());
		System.out.println("Puntuacion de la critica: "+CriticaDAOImplementation.getInstance().read(autor.getNombre()).getPuntuacion());
		System.out.println("Libro de la critica: "+fl.getTitulo());
		
	}

}
