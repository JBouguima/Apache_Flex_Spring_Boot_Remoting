/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 17 janv. 2017
 *
 * crudflexspring / AdresseService.java
 *
 **/
package com.jbouguima.remoting.services;

import java.util.List;

import com.jbouguima.remoting.model.gestionclient.Adresse;


public interface AdresseService {

	public List<Adresse> findAdresses();
	public Adresse findOne(Integer id);
	public Adresse addAdresse(Adresse adresse);
	public Adresse updateAdresse(Adresse adresse);
	public void deleteAdresse(Integer id);
	
}
