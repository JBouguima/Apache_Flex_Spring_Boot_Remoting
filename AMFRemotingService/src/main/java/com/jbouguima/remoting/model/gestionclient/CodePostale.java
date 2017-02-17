/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 12 janv. 2017
 *
 * CRUDFlex3Services / CodePostale.java
 *
 **/
package com.jbouguima.remoting.model.gestionclient;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class CodePostale {

	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer idCodePostale;
	private Integer numeroCodePostale;
	
	
	/**
	 * @return the idCodePostale
	 */
	public Integer getIdCodePostale() {
		return idCodePostale;
	}
	/**
	 * @param idCodePostale the idCodePostale to set
	 */
	public void setIdCodePostale(Integer idCodePostale) {
		this.idCodePostale = idCodePostale;
	}
	/**
	 * @return the numeroCodePostale
	 */
	public Integer getNumeroCodePostale() {
		return numeroCodePostale;
	}
	/**
	 * @param numeroCodePostale the numeroCodePostale to set
	 */
	public void setNumeroCodePostale(Integer numeroCodePostale) {
		this.numeroCodePostale = numeroCodePostale;
	}
	
	
	
}
