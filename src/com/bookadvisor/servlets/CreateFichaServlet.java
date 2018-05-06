package com.bookadvisor.servlets;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.bookadvisor.dao.FichaLibroDAOImplementation;
import com.bookadvisor.dao.model.FichaLibro;

@WebServlet("/CreateFichaServlet")
public class CreateFichaServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String titulo = req.getParameter("titulo");
		String autor = req.getParameter("autor");
		String editorial = req.getParameter("editorial");
		String categoria = req.getParameter("categoria");
		String fecha = req.getParameter("fecha");
		String resenaEditorial = req.getParameter("resenaEditorial");

		
		DateFormat df = new SimpleDateFormat("dd/MM/yyyy", Locale.FRENCH);
		
		try {
			Date date = df.parse(fecha);
			FichaLibro libro = new FichaLibro()
									.setAutor(autor)
									.setTitulo(titulo)
									.setEditorial(editorial)
									.setCategoria(categoria)
									.setDate(date)
									.setResEdit(resenaEditorial);
			 
			
			FichaLibroDAOImplementation.getInstance().create(libro);
			System.out.println("Autor: "+FichaLibroDAOImplementation.getInstance().read(titulo).getAutor());
			System.out.println("Titulo: "+FichaLibroDAOImplementation.getInstance().read(titulo).getTitulo());
			System.out.println("fecha: "+FichaLibroDAOImplementation.getInstance().read(titulo).getDate());
			System.out.println("Editorial: "+FichaLibroDAOImplementation.getInstance().read(titulo).getEditorial());
			System.out.println("Resena: "+FichaLibroDAOImplementation.getInstance().read(titulo).getResEdit());
			System.out.println("Categoria: "+FichaLibroDAOImplementation.getInstance().read(titulo).getCategoria());		
			
			resp.sendRedirect(req.getContextPath() + "/index.jsp");
		} catch (ParseException e) {
			e.printStackTrace();
		}
	}
}