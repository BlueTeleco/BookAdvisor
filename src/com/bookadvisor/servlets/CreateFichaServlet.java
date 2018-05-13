package com.bookadvisor.servlets;

import java.io.IOException;
import java.io.ByteArrayOutputStream;
import java.io.IOException; //Constructs an IOException with null as its error detail message.
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;


import com.bookadvisor.dao.FichaLibroDAOImplementation;
import com.bookadvisor.dao.model.FichaLibro;

@MultipartConfig
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
		// FILE UPLOAD: subida de ficheros
		Part filePart = req.getPart("file"); // Extrae el contenido almacenado en el campo (part) que contenga el nombre especificado
		InputStream fileContent = filePart.getInputStream(); // Extrae el contenido de ese fichero vinculado al input que contenía la part especificada
		ByteArrayOutputStream output = new ByteArrayOutputStream();
				
		byte[] buffer = new byte[250000];
		for (int len = 0; (len = fileContent.read(buffer)) > 0; ) {
			output.write(buffer, 0, len);
		}
		
		DateFormat df = new SimpleDateFormat("dd/MM/yyyy", Locale.FRENCH);
		
		try {
			Date date = df.parse(fecha);
			FichaLibro libro = new FichaLibro()
									.setAutor(autor)
									.setTitulo(titulo)
									.setEditorial(editorial)
									.setCategoria(categoria)
									.setDate(date)
									.setImagen(output.toByteArray())
									.setResEdit(resenaEditorial);
			 
			
			FichaLibroDAOImplementation.getInstance().create(libro);
			resp.sendRedirect(req.getContextPath() + "/index.jsp");
		} catch (ParseException e) {
			e.printStackTrace();
		}
	}
}