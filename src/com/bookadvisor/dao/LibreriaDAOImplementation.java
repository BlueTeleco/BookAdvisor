
package com.bookadvisor.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;

import com.bookadvisor.dao.model.Libreria;

public class LibreriaDAOImplementation implements LibreriaDAO {
	public static LibreriaDAOImplementation instance;
	private LibreriaDAOImplementation() { }
	public static LibreriaDAOImplementation getInstance() {
		if ( null == instance )
			instance = new LibreriaDAOImplementation ();
		return instance;
	}
	
	@Override
	public void create(Libreria libreria){
		Session session = SessionFactoryService.get().openSession();
		try {
			session.beginTransaction();
			session.save(libreria);
			session.getTransaction().commit();
		} catch (Exception e) {
		} finally {
			session.close();
		}
	}
	
	@Override
	public Libreria read(String email){
		Session session = SessionFactoryService.get().openSession();
		Libreria libreria = null;
		try {
			libreria = session.get(Libreria.class, email);
		} catch (Exception e) {
		} finally {
			session.close();
		}
		return libreria;
	}
	
	@Override
	public Libreria update(Libreria libreria){
		Session session = SessionFactoryService.get().openSession();
		try {
			session.beginTransaction();
			session.saveOrUpdate(libreria);
			session.getTransaction().commit();
		} catch (Exception e) {
		} finally {
			session.close();
		}
		return libreria;
	}
	
	@Override
	public void delete(Libreria libreria){
		Session session = SessionFactoryService.get().openSession();
		try {
			session.beginTransaction();
			session.delete(libreria);
			session.getTransaction().commit();
		} catch (Exception e) {
		} finally {
			session.close();
		}
	}
	@Override						     
	public Libreria login(String email, String password){
		Session session = SessionFactoryService.get().openSession();
		Libreria libreria = null;
		try {
			session.beginTransaction();
			libreria = (Libreria) session.createQuery ("select t from Libreria t where t.email= :email and t.password= :password")
					.setParameter("email", email)
					.setParameter("password", password)
					.uniqueResult();
			session.getTransaction().commit();
		} catch (Exception e) {
		} finally {
			session.close();
		}
		return libreria;
	}
	
	@Override
	public List<Libreria> getAll(){
		Session session = SessionFactoryService.get().openSession();
		List<Libreria> librerias = new ArrayList<>();
		try {
			session.beginTransaction();
			librerias.addAll(session.createQuery("select t from Libreria t")
					.getResultList() );
			session.getTransaction().commit();
		} catch (Exception e) {
		} finally {
			session.close();
		}
		return librerias;
	}
		
	
	

}
