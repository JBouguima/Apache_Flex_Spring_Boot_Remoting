/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 12 janv. 2017
 *
 * CRUDFlex3Services / PaiementChequeRepository.java
 *
 **/
package com.jbouguima.remoting.repository;

import org.springframework.transaction.annotation.Transactional;

import com.jbouguima.remoting.model.gestionproduit.PaiementCheque;

@Transactional
public interface PaiementChequeRepository extends PayementBaseRepository<PaiementCheque> {

}
