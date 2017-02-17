/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 12 janv. 2017
 *
 * CRUDFlex3Services / Contact.java
 *
 **/
package com.jbouguima.remoting.model.gestionclient;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Contact {
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer idContact;

	/**
	 * @return the idContact
	 */
	public Integer getIdContact() {
		return idContact;
	}

	/**
	 * @param idContact the idContact to set
	 */
	public void setIdContact(Integer idContact) {
		this.idContact = idContact;
	}
	
	
}
