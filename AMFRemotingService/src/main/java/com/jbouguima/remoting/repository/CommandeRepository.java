/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 12 janv. 2017
 *
 * CRUDFlex3Services / CommandeRepository.java
 *
 **/
package com.jbouguima.remoting.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.jbouguima.remoting.model.gestionclient.Client;
import com.jbouguima.remoting.model.gestionproduit.Commande;


public interface CommandeRepository extends JpaRepository<Commande, Integer> {
	
	@Query("select c from Commande c where c.client = ?1")
	List<Commande> findCommandesByClient(Client client);
}
