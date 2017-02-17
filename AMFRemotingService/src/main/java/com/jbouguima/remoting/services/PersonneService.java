/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 17 janv. 2017
 *
 * crudflexspring / PersonneService.java
 *
 **/
package com.jbouguima.remoting.services;

import java.util.List;

import com.jbouguima.remoting.model.gestionclient.Personne;


public interface PersonneService {

	public List<Personne> findPersonnes();
	public Personne findOne(Integer id);
	public Personne addPersonne(Personne personne);
	public Personne updatePersonne(Personne personne);
	public void deletePersonne(Integer id);
}
