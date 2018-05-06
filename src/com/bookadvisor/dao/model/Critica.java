
package com.bookadvisor.dao.model;

import java.awt.Image;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Critica implements Serializable {
	
	@Id
	private Lector autor;
	private String titulo;
	private String cuerpo;
	private String puntuacion;
	@ManyToOne
	private FichaLibro fl;
	
	public Critica() {
		
	}
	
	public FichaLibro getFl() {
		return this.fl;
	}
	
	public Critica setFl(FichaLibro fl) {
		this.fl = fl;
		return this;
	}

	public Lector getAutor() {
		return this.autor;
	}

	public String getTexto() {
		return this.cuerpo;
	}
	
	public String getTitulo() {
		return this.titulo;
	}
	
	public Critica setTexto(String cuerpo) {
		this.cuerpo = cuerpo;
		return this;
	}
	public Critica setAutor(Lector autor) {
		this.autor = autor;
		return this;
	}
	public Critica setTitulo(String titulo) {
		this.titulo = titulo;
		return this;
	}

	public Critica setPuntuacion(String puntuacion) {
		this.puntuacion = puntuacion;
		return this;
	}


}