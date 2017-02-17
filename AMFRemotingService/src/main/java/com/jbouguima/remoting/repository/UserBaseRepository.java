/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 18 janv. 2017
 *
 * crudflexspring / UserBaseRepository.java
 *
 **/
package com.jbouguima.remoting.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.NoRepositoryBean;

import com.jbouguima.remoting.model.gestionclient.Personne;

@NoRepositoryBean
public interface UserBaseRepository<EntityType extends Personne> extends CrudRepository<EntityType, Integer> {

}
