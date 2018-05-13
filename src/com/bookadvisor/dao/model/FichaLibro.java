package com.bookadvisor.dao.model;

import java.io.Serializable;

import javax.persistence.FetchType;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.OneToMany;

@Entity
public class FichaLibro implements Serializable {
	
	@Id
	private String titulo;
	private String autor;
	private String editorial;
	
	@Lob 
	private byte[] image;
	
	@OneToMany(mappedBy = "fl", fetch = FetchType.EAGER)
	private Set<Exchange> exchanges; 

	@OneToMany(mappedBy = "fl", fetch = FetchType.EAGER)
	private List<Critica> criticas;

	private String resenaEditorial;
	private String categoria;
	private Date date;
	
	public FichaLibro() {
		this.criticas = new ArrayList<>();
		this.exchanges = new HashSet<>();
	}

	public String getTitulo() {
		return titulo;
	}

	public FichaLibro setTitulo(String titulo) {
		this.titulo = titulo;
		return this;
	}
	
	public String getAutor() {
		return autor;
	}
	
	public FichaLibro setAutor(String autor) {
		this.autor = autor;
		return this;
	}
	
	public String getEditorial() {
		return editorial;
	}
	
	public FichaLibro setEditorial(String editorial) {
		this.editorial = editorial;
		return this;
	}
	
	public String getResEdit() {
		return resenaEditorial;
	}
	
	public FichaLibro setResEdit(String resenaEditorial) {
		this.resenaEditorial = resenaEditorial;
		return this;
	}
	
	public String getCategoria() {
		return categoria;
	}
	
	public FichaLibro setCategoria(String categoria) {
		this.categoria = categoria;
		return this;
	}
	
	public Date getDate() {
		return date;
	}
	
	public FichaLibro setDate(Date date) {
		this.date = date;
		return this;
	}
	
	public byte[] getImagen() {
		return image;
	}
	
	public FichaLibro setImagen(byte[] image) {
		this.image = image;
		return this;
	}
	
	public List<Critica> getCriticas() {
		return this.criticas;
	}

	public FichaLibro setCriticas(List<Critica> criticas) {
		this.criticas = criticas;
		return this;
	}
	
	public Set<Exchange> getExchanges() {
		return this.exchanges;
	}

	public FichaLibro setExchanges(Set<Exchange> exchanges) {
		this.exchanges = exchanges;
		return this;
	}
}