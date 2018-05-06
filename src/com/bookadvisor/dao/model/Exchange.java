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
public class Exchange implements Serializable {
	
	@Id
	private String ISBN;
	//@ManyToOne
	private FichaLibro fll;
	private String email;
	private String info;
	private String estado;
	private String formato;
	private FichaLibro fl;

	
	public String getEmail() {
		return this.email;
	}
	
	public Exchange setEmail(String email){
		this.email = email;
		return this;
	}
	
	public String getFormato() {
		return formato;
	}
	
	public Exchange setFormato(String formato) {
		this.formato = formato;
		return this;
	}
	
	public String getISBN() {
		return ISBN;
	}
	
	public Exchange setISBN(String ISBN) {
		this.ISBN = ISBN;
		return this;
	}
/*	
	public FichaLibro getFl() {
		return fl;
	}
	
	public Exchange setFl(FichaLibro fl) {
		this.fl = fl;
		return this;
	}
	*/
	
	
	public FichaLibro getFl() {
		return this.fl;
	}
	
	public Exchange setFl(FichaLibro fl) {
		this.fl = fl;
		return this;
	}
	public String getInfo() {
		return info;
	}
	
	public Exchange setInfo(String info) {
		this.info = info;
		return this;
	}
	
	public String getEstado() {
		return estado;
	}
	
	public Exchange setEstado(String estado) {
		this.estado = estado;
		return this;
	}

}