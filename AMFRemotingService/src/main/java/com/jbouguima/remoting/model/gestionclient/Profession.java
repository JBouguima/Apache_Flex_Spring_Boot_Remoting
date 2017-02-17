/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 12 janv. 2017
 *
 * CRUDFlex3Services / Profession.java
 *
 **/
package com.jbouguima.remoting.model.gestionclient;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Profession {
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer idProfessio;
	private String libelleProfession;
	
	/**
	 * @return the idProfessio
	 */
	public Integer getIdProfessio() {
		return idProfessio;
	}
	/**
	 * @param idProfessio the idProfessio to set
	 */
	public void setIdProfessio(Integer idProfessio) {
		this.idProfessio = idProfessio;
	}
	/**
	 * @return the libelleProfession
	 */
	public String getLibelleProfession() {
		return libelleProfession;
	}
	/**
	 * @param libelleProfession the libelleProfession to set
	 */
	public void setLibelleProfession(String libelleProfession) {
		this.libelleProfession = libelleProfession;
	}

	
}
