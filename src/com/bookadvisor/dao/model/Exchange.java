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
public class Exchange implements Serializable {
	
	@Id
	private String ISBN;
	// ForeingKey con ficha de libro
	private String FichaLibro;
	// Foreingkey con el lector dueño del intercambio
	private String email;
	private String info;
	private String estado;
	private String formato;
	
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
	
	public Exchange setISBN(String iSBN) {
		ISBN = ISBN;
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
	
	public Exchange setEstador(String estado) {
		this.estado = estado;
		return this;
	}

}