/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 17 janv. 2017
 *
 * crudflexspring / ClientService.java
 *
 **/
package com.jbouguima.remoting.services;

import java.util.List;

import org.springframework.flex.remoting.RemotingDestination;
import org.springframework.stereotype.Service;

import com.jbouguima.remoting.model.gestionclient.Client;

public interface ClientService {

	public List<Client> findClients();
	public Client findOne(Integer id);
	public Client addClient(Client client);
	public Client updateClient(Client client);
	public void deleteClient(Integer id);
	
}
