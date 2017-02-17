/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 17 janv. 2017
 *
 * crudflexspring / PaiementChequeService.java
 *
 **/
package com.jbouguima.remoting.services;

import java.util.List;

import com.jbouguima.remoting.model.gestionproduit.PaiementCheque;


public interface PaiementChequeService {

	public List<PaiementCheque> findPaiementCheques();
	public PaiementCheque findOne(Integer id);
	public PaiementCheque addPaiementCheque(PaiementCheque paiementCheque);
	public PaiementCheque updatePaiementCheque(PaiementCheque paiementCheque);
	public void deletePaiementCheque(Integer id);
}
