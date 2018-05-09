package com.bookadvisor.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bookadvisor.dao.CriticaDAOImplementation;
import com.bookadvisor.dao.FichaLibroDAOImplementation;
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
							.setTitulo(titulo)
							.setFl(fl);
		
		CriticaDAOImplementation.getInstance().create(critica);
		
		List<Critica> lista = fl.getCriticas();
		lista.add(critica);
		fl.setCriticas(lista);
		FichaLibroDAOImplementation.getInstance().update(fl);
							
		
		System.out.println("autor: " +autor.getNombre());
		System.out.println("esta vacio? "+ CriticaDAOImplementation.getInstance().read(autor.getNombre()));
		System.out.println("critica "+CriticaDAOImplementation.getInstance());
		System.out.println("getAll Criticas: "+CriticaDAOImplementation.getInstance().getAll());
		System.out.println("fl session Criticas: "+ fl.getCriticas());


		response.sendRedirect(request.getContextPath()+"/PresentacionFichaLibro.jsp");

	}
	

}
