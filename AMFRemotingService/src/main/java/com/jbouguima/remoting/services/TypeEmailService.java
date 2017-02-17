/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 17 janv. 2017
 *
 * crudflexspring / TypeEmailService.java
 *
 **/
package com.jbouguima.remoting.services;

import java.util.List;

import com.jbouguima.remoting.model.gestionclient.TypeEmail;


public interface TypeEmailService {

	public List<TypeEmail> findTypeEmails();
	public TypeEmail findOne(Integer id);
	public TypeEmail addTypeEmail(TypeEmail typeEmail);
	public TypeEmail updateTypeEmail(TypeEmail typeEmail);
	public void deleteTypeEmail(Integer id);
}
