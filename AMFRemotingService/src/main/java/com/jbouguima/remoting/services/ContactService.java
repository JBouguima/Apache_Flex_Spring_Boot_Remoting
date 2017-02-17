/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 17 janv. 2017
 *
 * crudflexspring / ContactService.java
 *
 **/
package com.jbouguima.remoting.services;

import java.util.List;

import com.jbouguima.remoting.model.gestionclient.Contact;


public interface ContactService {

	public List<Contact> findContacts();
	public Contact findOne(Integer id);
	public Contact addContact(Contact contact);
	public Contact updateContact(Contact contact);
	public void deleteContact(Integer id);
	
}
