/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 12 janv. 2017
 *
 * CRUDFlex3Services / TypePaiementRepository.java
 *
 **/
package com.jbouguima.remoting.repository;

import org.springframework.transaction.annotation.Transactional;

import com.jbouguima.remoting.model.gestionproduit.TypePaiement;

@Transactional
public interface TypePaiementRepository extends PayementBaseRepository<TypePaiement>{

}
