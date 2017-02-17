/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 17 janv. 2017
 *
 * crudflexspring / VilleService.java
 *
 **/
package com.jbouguima.remoting.services;

import java.util.List;

import com.jbouguima.remoting.model.gestionclient.Ville;


public interface VilleService {

	public List<Ville> findVilles();
	public Ville findOne(Integer id);
	public Ville addVille(Ville ville);
	public Ville updateVille(Ville ville);
	public void deleteVille(Integer id);
}
