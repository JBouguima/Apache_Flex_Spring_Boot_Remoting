/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 17 janv. 2017
 *
 * crudflexspring / TelephoneService.java
 *
 **/
package com.jbouguima.remoting.services;

import java.util.List;

import com.jbouguima.remoting.model.gestionclient.Telephone;


public interface TelephoneService {

	public List<Telephone> findTelephones();
	public Telephone findOne(Integer id);
	public Telephone addTelephone(Telephone telephone);
	public Telephone updateTelephone(Telephone telephone);
	public void deleteTelephone(Integer id);
}
