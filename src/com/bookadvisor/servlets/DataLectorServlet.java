package com.bookadvisor.servlets;

import java.io.IOException;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bookadvisor.dao.CriticaDAOImplementation;
import com.bookadvisor.dao.model.Critica;
import com.bookadvisor.dao.model.Lector;


@WebServlet("/DataLectorServlet")
public class DataLectorServlet extends HttpServlet {

	@SuppressWarnings("null")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession sesionX = (HttpSession) request.getSession();
		Lector lectorX = (Lector) sesionX.getAttribute("lectorX");
		System.out.println("sesionX en DataLectorServlet: "+ sesionX.getAttribute("name"));

		List<String> criticas_titulo = new ArrayList<String>() ;
		List<Critica> criticas_list_aux = CriticaDAOImplementation.getInstance().getAll();
		if(criticas_list_aux.size() > 0) {
			for(Critica c: criticas_list_aux) {
				if(c.getAutor() == lectorX.getNombre()) {
					criticas_titulo.add(c.getTitulo());
				}
			}
			System.out.println("Numero de criticas de mi usuario: "+criticas_titulo.size()); 		
		} else {	
			System.out.println("No hay criticas: "+criticas_titulo.size()); 
		}
		request.getSession().setAttribute("criticas_list", criticas_titulo);
		System.out.println("DataLectorServlet > mis criticas: "+ sesionX.getAttribute("criticas_list"));

		response.sendRedirect(request.getContextPath()+ "/DatosLector.jsp");
		
	}
}
