package com.erisson.DAO;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.erisson.DAO.Hibernate.HibernateDAO;
import com.erisson.beans.Cliente;

@Component
public interface DAOCliente { 

	public void addCliente(Cliente cliente);
	public void updateCliente(Cliente cliente);
	public Cliente getCliente(int id);
	public void deleteCliente(int id);
	public List getClientes();
}
