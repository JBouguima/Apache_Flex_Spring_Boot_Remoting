/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 17 janv. 2017
 *
 * crudflexspring / ProfessionService.java
 *
 **/
package com.jbouguima.remoting.services;

import java.util.List;

import com.jbouguima.remoting.model.gestionclient.Profession;


public interface ProfessionService {

	public List<Profession> findProfessions();
	public Profession findOne(Integer id);
	public Profession addProfession(Profession profession);
	public Profession updateProfession(Profession profession);
	public void deleteProfession(Integer id);
}
