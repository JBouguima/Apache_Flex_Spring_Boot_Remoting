/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 17 janv. 2017
 *
 * crudflexspring / ClientServiceImpl.java
 *
 **/
package com.jbouguima.remoting.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.flex.remoting.RemotingDestination;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jbouguima.remoting.model.gestionclient.Client;
import com.jbouguima.remoting.repository.ClientRepository;

@Service("clientService") 
@RemotingDestination
@Transactional
public class ClientServiceImpl implements ClientService {

	@Autowired
	private ClientRepository clientRepository;
	
	/* (non-Javadoc)
	 * @see com.jbouguima.remoting.services.ClientService#findClients()
	 */
	@Override
	public List<Client> findClients() {
		Iterable<Client> result = clientRepository.findAll();
		List<Client> list = new ArrayList<>();
		result.forEach(list::add);
		return list;
	}

	/* (non-Javadoc)
	 * @see com.jbouguima.remoting.services.ClientService#findOne(java.lang.Integer)
	 */
	@Override
	public Client findOne(Integer id) {
		return clientRepository.findOne(id);
	}

	/* (non-Javadoc)
	 * @see com.jbouguima.remoting.services.ClientService#addClient(com.jbouguima.remoting.model.gestionclient.Client)
	 */
	@Transactional
	public Client addClient(Client client) {
		// TODO Auto-generated method stub
		return clientRepository.save(client);
	}

	/* (non-Javadoc)
	 * @see com.jbouguima.remoting.services.ClientService#updateClient(com.jbouguima.remoting.model.gestionclient.Client)
	 */
	@Override
	public Client updateClient(Client client) {
		// TODO Auto-generated method stub
		return clientRepository.save(client);
	}

	/* (non-Javadoc)
	 * @see com.jbouguima.remoting.services.ClientService#deleteClient(java.lang.Integer)
	 */
	@Override
	public void deleteClient(Integer id) {
		// TODO Auto-generated method stub
		clientRepository.delete(id);
	}


}
