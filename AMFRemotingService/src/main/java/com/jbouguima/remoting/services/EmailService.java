/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 17 janv. 2017
 *
 * crudflexspring / EmailService.java
 *
 **/
package com.jbouguima.remoting.services;

import java.util.List;

import com.jbouguima.remoting.model.gestionclient.Email;

public interface EmailService {

	public List<Email> findEmails();
	public Email findOne(Integer id);
	public Email addEmail(Email contact);
	public Email updateEmail(Email contact);
	public void deleteEmail(Integer id);
	
}
