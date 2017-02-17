/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 17 janv. 2017
 *
 * crudflexspring / IdentitePersonneService.java
 *
 **/
package com.jbouguima.remoting.services;

import java.util.List;

import com.jbouguima.remoting.model.gestionclient.IdentitePersonne;

public interface IdentitePersonneService {

	public List<IdentitePersonne> findIdentitePersonnes();
	public IdentitePersonne findOne(Integer id);
	public IdentitePersonne addIdentitePersonne(IdentitePersonne identitePersonne);
	public IdentitePersonne updateIdentitePersonne(IdentitePersonne identitePersonne);
	public void deleteIdentitePersonne(Integer id);
}
