/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 17 janv. 2017
 *
 * crudflexspring / TypePaiementService.java
 *
 **/
package com.jbouguima.remoting.services;

import java.util.List;

import com.jbouguima.remoting.model.gestionproduit.TypePaiement;


public interface TypePaiementService {

	public List<TypePaiement> findTypePaiements();
	public TypePaiement findOne(Integer id);
	public TypePaiement addTypePaiement(TypePaiement typePaiement);
	public TypePaiement updateTypePaiement(TypePaiement typePaiement);
	public void deleteTypePaiement(Integer id);
}
