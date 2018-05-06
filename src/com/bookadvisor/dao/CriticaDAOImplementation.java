package com.bookadvisor.dao;

import java.util.ArrayList;

import java.util.List;

import org.hibernate.Session;

import com.bookadvisor.dao.model.Critica;
import com.bookadvisor.dao.model.Lector;

public class CriticaDAOImplementation implements CriticaDAO {
	
	public static CriticaDAOImplementation instance;
	
	private CriticaDAOImplementation() { }
	public static CriticaDAOImplementation getInstance() {
		if ( null == instance )
			instance = new CriticaDAOImplementation();
		return instance;
	}

	@Override
	public void create(Critica critica){
		Session session = SessionFactoryService.get().openSession();
		try {
			session.beginTransaction();
			session.save(critica);
			session.getTransaction().commit();
		} catch (Exception e) {
		} finally {
				session.close();
		}
	}
		
	@Override
	public Critica read(String autor){
		Session session = SessionFactoryService.get().openSession();
		Critica cri = null;
		try {
			cri = session.get(Critica.class, autor);
		} catch (Exception e) {
		} finally {
			session.close();
		}		
		return cri;
	}
		
	@Override
	public Critica update(Critica critica){
		Session session = SessionFactoryService.get().openSession();
		try {
			session.beginTransaction();
			session.saveOrUpdate(critica);
			session.getTransaction().commit();
		} catch (Exception e) {
		} finally {
			session.close();
		}
		return critica;
	}

	@Override
	public void delete(Critica critica){
		Session session = SessionFactoryService.get().openSession();
		try {
			session.beginTransaction();
			session.delete(critica);
			session.getTransaction().commit();
		} catch (Exception e) {
		// TODO: handle exception
		} finally {
			session.close();
		}
	}
		
	@Override
	public List<Critica> getAll(){
		Session session = SessionFactoryService.get().openSession();
		List<Critica> criticas_list = new ArrayList<>();
		try {
			session.beginTransaction();
			criticas_list.addAll(session.createQuery("select t from Critica t")
					.getResultList());
			session.getTransaction().commit();
		} catch (Exception e) {
		} finally {
			session.close();
		}
		return criticas_list;
	}

}