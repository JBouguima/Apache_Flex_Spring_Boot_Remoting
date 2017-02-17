/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 12 janv. 2017
 *
 * CRUDFlex3Services / PaiementEspeceRepository.java
 *
 **/
package com.jbouguima.remoting.repository;

import org.springframework.transaction.annotation.Transactional;

import com.jbouguima.remoting.model.gestionproduit.PaiementEspece;

@Transactional
public interface PaiementEspeceRepository extends PayementBaseRepository<PaiementEspece> {

}
