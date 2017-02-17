/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 17 janv. 2017
 *
 * crudflexspring / ProduitService.java
 *
 **/
package com.jbouguima.remoting.services;

import java.util.List;

import com.jbouguima.remoting.model.gestionproduit.Produit;


public interface ProduitService {

	public List<Produit> findProduits();
	public Produit findOne(Integer id);
	public Produit addProduit(Produit client);
	public Produit updateProduit(Produit client);
	public void deleteProduit(Integer id);
}
