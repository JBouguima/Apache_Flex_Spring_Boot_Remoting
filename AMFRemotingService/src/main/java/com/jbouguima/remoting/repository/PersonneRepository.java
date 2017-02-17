/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 12 janv. 2017
 *
 * CRUDFlex3Services / PersonneRepository.java
 *
 **/
package com.jbouguima.remoting.repository;

import org.springframework.transaction.annotation.Transactional;

import com.jbouguima.remoting.model.gestionclient.Personne;

@Transactional
public interface PersonneRepository extends UserBaseRepository<Personne> {

}
