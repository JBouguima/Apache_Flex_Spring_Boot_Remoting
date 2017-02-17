/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 12 janv. 2017
 *
 * CRUDFlex3Services / Email.java
 *
 **/
package com.jbouguima.remoting.model.gestionclient;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Email {

	@Id
	private String adresseEmail;
	
	@OneToOne
	private TypeEmail typeEmail;
	
	
	/**
	 * @return the adresseEmail
	 */
	public String getAdresseEmail() {
		return adresseEmail;
	}
	/**
	 * @param adresseEmail the adresseEmail to set
	 */
	public void setAdresseEmail(String adresseEmail) {
		this.adresseEmail = adresseEmail;
	}
	/**
	 * @return the typeEmail
	 */
	public TypeEmail getTypeEmail() {
		return typeEmail;
	}
	/**
	 * @param typeEmail the typeEmail to set
	 */
	public void setTypeEmail(TypeEmail typeEmail) {
		this.typeEmail = typeEmail;
	}
	
	
}
