/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 17 janv. 2017
 *
 * crudflexspring / PaiementEspeceService.java
 *
 **/
package com.jbouguima.remoting.services;

import java.util.List;

import com.jbouguima.remoting.model.gestionproduit.PaiementEspece;


public interface PaiementEspeceService {

	public List<PaiementEspece> findPaiementEspeces();
	public PaiementEspece findOne(Integer id);
	public PaiementEspece addPaiementEspece(PaiementEspece paiementEspece);
	public PaiementEspece updatePaiementEspece(PaiementEspece paiementEspece);
	public void deletePaiementEspece(Integer id);
}
