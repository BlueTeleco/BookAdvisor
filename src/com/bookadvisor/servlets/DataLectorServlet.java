package com.bookadvisor.servlets;

import java.io.IOException;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;
import java.util.stream.Collectors;

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

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Lector lector = (Lector) req.getSession().getAttribute("lector");
		
		
	}
}
