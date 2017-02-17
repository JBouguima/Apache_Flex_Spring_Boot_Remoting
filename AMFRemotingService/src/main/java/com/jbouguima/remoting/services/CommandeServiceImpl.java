/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 17 janv. 2017
 *
 * crudflexspring / CommandeServiceImpl.java
 *
 **/
package com.jbouguima.remoting.services;

import java.util.List;

import org.hibernate.jpa.criteria.predicate.BooleanExpressionPredicate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.flex.remoting.RemotingDestination;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jbouguima.remoting.model.gestionclient.Client;
import com.jbouguima.remoting.model.gestionproduit.Commande;
import com.jbouguima.remoting.repository.CommandeRepository;

@Service("commandeService") 
@RemotingDestination
@Transactional
public class CommandeServiceImpl implements CommandeService {

	@Autowired
	private CommandeRepository commandeRepository;
	
	/* (non-Javadoc)
	 * @see com.jbouguima.remoting.services.CommandeService#findCommandes()
	 */
	@Override
	public List<Commande> findCommandes() {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see com.jbouguima.remoting.services.CommandeService#findOne(java.lang.Integer)
	 */
	@Override
	public Commande findOne(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see com.jbouguima.remoting.services.CommandeService#addCommande(com.jbouguima.remoting.model.gestionproduit.Commande)
	 */
	@Override
	public Commande addCommande(Commande commande) {
		// TODO Auto-generated method stub
		return commandeRepository.save(commande);
	}

	/* (non-Javadoc)
	 * @see com.jbouguima.remoting.services.CommandeService#updateCommande(com.jbouguima.remoting.model.gestionproduit.Commande)
	 */
	@Override
	public Commande updateCommande(Commande commande) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see com.jbouguima.remoting.services.CommandeService#deleteCommande(java.lang.Integer)
	 */
	@Override
	public void deleteCommande(Integer id) {
		// TODO Auto-generated method stub

	}

	/* (non-Javadoc)
	 * @see com.jbouguima.remoting.services.CommandeService#findCommandesByClient(com.jbouguima.remoting.model.gestionclient.Client)
	 */
	@Override
	public List<Commande> findCommandesByClient(Client client) {
		return commandeRepository.findCommandesByClient(client);
	}

}
