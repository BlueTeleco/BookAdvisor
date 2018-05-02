package com.bookadvisor.dao;

import com.bookadvisor.dao.model.Exchange;

import java.util.List;

public interface ExchangeDAO {
		
	public void create(Exchange exchange);
	public Exchange read(String ISBN);
	public Exchange update(Exchange exchange);
	public void delete(Exchange exchange);
	public List<Exchange> getAll();	

}
