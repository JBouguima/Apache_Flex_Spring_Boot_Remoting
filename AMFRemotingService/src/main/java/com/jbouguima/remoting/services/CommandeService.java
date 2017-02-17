/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 17 janv. 2017
 *
 * crudflexspring / CommandeService.java
 *
 **/
package com.jbouguima.remoting.services;

import java.util.List;

import com.jbouguima.remoting.model.gestionclient.Client;
import com.jbouguima.remoting.model.gestionproduit.Commande;


public interface CommandeService {

	public List<Commande> findCommandes();
	public List<Commande> findCommandesByClient(Client client);
	public Commande findOne(Integer id);
	public Commande addCommande(Commande commande);
	public Commande updateCommande(Commande commande);
	public void deleteCommande(Integer id);
}
