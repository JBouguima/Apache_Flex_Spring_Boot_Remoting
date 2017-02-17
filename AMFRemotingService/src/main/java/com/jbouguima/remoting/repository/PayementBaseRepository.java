/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 19 janv. 2017
 *
 * crudflexspring / PayementBaseRepository.java
 *
 **/
package com.jbouguima.remoting.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.NoRepositoryBean;

import com.jbouguima.remoting.model.gestionproduit.TypePaiement;


@NoRepositoryBean
public interface PayementBaseRepository<EntityType extends TypePaiement> extends CrudRepository<EntityType, Integer>  {

}
