/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 12 janv. 2017
 *
 * CRUDFlex3Services / TypeEmail.java
 *
 **/
package com.jbouguima.remoting.model.gestionclient;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class TypeEmail {
	
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer idTypeEmail;
	private String libelleTypeEmail;
	
	/**
	 * @return the idTypeEmail
	 */
	public Integer getIdTypeEmail() {
		return idTypeEmail;
	}
	/**
	 * @param idTypeEmail the idTypeEmail to set
	 */
	public void setIdTypeEmail(Integer idTypeEmail) {
		this.idTypeEmail = idTypeEmail;
	}
	/**
	 * @return the libelleTypeEmail
	 */
	public String getLibelleTypeEmail() {
		return libelleTypeEmail;
	}
	/**
	 * @param libelleTypeEmail the libelleTypeEmail to set
	 */
	public void setLibelleTypeEmail(String libelleTypeEmail) {
		this.libelleTypeEmail = libelleTypeEmail;
	}

	
}
