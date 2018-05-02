package com.bookadvisor.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

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


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession sesionX = (HttpSession) request.getSession();
		Libreria publicistaX = (Libreria) sesionX.getAttribute("publicistaX");
		System.out.println("sesionX en DataLectorServlet: "+ sesionX.getAttribute("name"));

		List<String> noticias_titulo = new ArrayList<String>() ;
		List<Noticia> noticias_list_aux = NoticiaDAOImplementation.getInstance().getAll();
		if(noticias_list_aux.size() > 0) {
			for(Noticia c: noticias_list_aux) {
				if(c.getAutor().getNombre() == publicistaX.getNombre()) {
					noticias_titulo.add(c.getTitulo());
				}
			}
			System.out.println("Numero de noticias de mi usuario: "+noticias_titulo.size()); 		
		} else {	
			System.out.println("No hay noticias: "+noticias_titulo.size()); 
		}
		request.getSession().setAttribute("noticias_list", noticias_titulo);
		System.out.println("DataLectorServlet > mis noticias: "+ sesionX.getAttribute("noticias_list"));

		response.sendRedirect(request.getContextPath()+ "/DatosPublicista.jsp");
		
	}
}