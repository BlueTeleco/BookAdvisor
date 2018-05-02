package com.bookadvisor.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;

import com.bookadvisor.dao.model.Exchange;

public class ExchangeDAOImplementation implements ExchangeDAO {
	
	public static ExchangeDAOImplementation instance;
	
	private ExchangeDAOImplementation() { }
	public static ExchangeDAOImplementation getInstance() {
		if ( null == instance )
			instance = new ExchangeDAOImplementation();
		return instance;
	}
	
	@Override
	public void create(Exchange exchange) {
		Session session = SessionFactoryService.get().openSession();
		try {
			session.beginTransaction();
			session.save(exchange);
			session.getTransaction().commit();
		} catch (Exception e) {
		} finally {
				session.close();
		}
	}
	
	@Override
	public Exchange read(String ISBN) {	
		Session session = SessionFactoryService.get().openSession();
		Exchange ex = null;
			try {
				ex = session.get(Exchange.class, ISBN);
			} catch (Exception e) {
			} finally {
				session.close();
			}		
			return ex;
	}
		
	
	@Override
	public Exchange update(Exchange exchange) {
		Session session = SessionFactoryService.get().openSession();
		try {
			session.beginTransaction();
			session.saveOrUpdate(exchange);
			session.getTransaction().commit();
		} catch (Exception e) {
		} finally {
			session.close();
		}
		return exchange;
	}
	
	@Override
	public void delete(Exchange exchange) {
		Session session = SessionFactoryService.get().openSession();
		try {
			session.beginTransaction();
			session.delete(exchange);
			session.getTransaction().commit();
		} catch (Exception e) {
		} finally {
			session.close();
		}
	}
	
	@Override
	public List<Exchange> getAll(){
		Session session = SessionFactoryService.get().openSession();
		List<Exchange> exchanges = new ArrayList<>();
		try {
			session.beginTransaction();
			exchanges.addAll(session.createQuery("select t from Exchange t")
					.getResultList());
			session.getTransaction().commit();
		} catch (Exception e) {
		} finally {
			session.close();
		}
		return exchanges;
	}



}
