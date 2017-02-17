/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 12 janv. 2017
 *
 * CRUDFlex3Services / TypeIdentite.java
 *
 **/
package com.jbouguima.remoting.model.gestionclient;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class TypeIdentite {
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer idTypeIdentite;
	private String libelleTypeIdentite;
	
	/**
	 * @return the idTypeIdentite
	 */
	public Integer getIdTypeIdentite() {
		return idTypeIdentite;
	}
	/**
	 * @param idTypeIdentite the idTypeIdentite to set
	 */
	public void setIdTypeIdentite(Integer idTypeIdentite) {
		this.idTypeIdentite = idTypeIdentite;
	}
	/**
	 * @return the libelleTypeIdentite
	 */
	public String getLibelleTypeIdentite() {
		return libelleTypeIdentite;
	}
	/**
	 * @param libelleTypeIdentite the libelleTypeIdentite to set
	 */
	public void setLibelleTypeIdentite(String libelleTypeIdentite) {
		this.libelleTypeIdentite = libelleTypeIdentite;
	}
	
	
}
