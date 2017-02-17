/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 12 janv. 2017
 *
 * CRUDFlex3Services / PrefixeNumeroTelephone.java
 *
 **/
package com.jbouguima.remoting.model.gestionclient;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class PrefixeNumeroTelephone {
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer idPrefixe;
	private String prefixe;
	private Boolean indicateurFixe;
	
	
	/**
	 * @return the idPrefixe
	 */
	public Integer getIdPrefixe() {
		return idPrefixe;
	}
	/**
	 * @param idPrefixe the idPrefixe to set
	 */
	public void setIdPrefixe(Integer idPrefixe) {
		this.idPrefixe = idPrefixe;
	}
	/**
	 * @return the prefixe
	 */
	public String getPrefixe() {
		return prefixe;
	}
	/**
	 * @param prefixe the prefixe to set
	 */
	public void setPrefixe(String prefixe) {
		this.prefixe = prefixe;
	}
	/**
	 * @return the indicateurFixe
	 */
	public Boolean getIndicateurFixe() {
		return indicateurFixe;
	}
	/**
	 * @param indicateurFixe the indicateurFixe to set
	 */
	public void setIndicateurFixe(Boolean indicateurFixe) {
		this.indicateurFixe = indicateurFixe;
	}

	
	
}
