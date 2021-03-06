package com.bookadvisor.dao;

import java.util.List;

import com.bookadvisor.dao.model.Biblioteca;

public interface BibliotecaDAO {
	
	public void create(Biblioteca biblioteca);
	public Biblioteca read(String titulo);
	public Biblioteca update(Biblioteca biblioteca);
	public void delete(Biblioteca biblioteca);
	public List<Biblioteca> getAll();

}
