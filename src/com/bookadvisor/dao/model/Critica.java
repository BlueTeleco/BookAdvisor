
package com.bookadvisor.dao.model;

import java.awt.Image;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Critica implements Serializable {
	
	@Id
	private String autor;
	private String titulo;
	private String texto;
	private ArrayList criticas_list;
	

	
	public Critica() {
		this.criticas_list = new ArrayList<>();
	}

	public String getAutor() {
		return this.autor;
	}

	public String getTexto() {
		return this.texto;
	}
	
	public String getTitulo() {
		return this.titulo;
	}
	
	public Critica setTexto(String texto) {
		this.texto = texto;
		return this;
	}
	public Critica setAutor(String autor) {
		this.autor = autor;
		return this;
	}
	public Critica setTitulo(String titulo) {
		this.titulo = titulo;
		return this;
	}


}