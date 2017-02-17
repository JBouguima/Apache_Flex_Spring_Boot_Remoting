/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 17 janv. 2017
 *
 * crudflexspring / LigneCommandeService.java
 *
 **/
package com.jbouguima.remoting.services;

import java.util.List;

import com.jbouguima.remoting.model.gestionproduit.LigneCommande;


public interface LigneCommandeService {

	public List<LigneCommande> findLigneCommandes();
	public LigneCommande findOne(Integer id);
	public LigneCommande addLigneCommande(LigneCommande ligneCommande);
	public LigneCommande updateLigneCommande(LigneCommande ligneCommande);
	public void deleteLigneCommande(Integer id);
}
