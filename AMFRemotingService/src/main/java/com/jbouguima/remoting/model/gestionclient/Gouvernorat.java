/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 12 janv. 2017
 *
 * CRUDFlex3Services / Gouvernorat.java
 *
 **/
package com.jbouguima.remoting.model.gestionclient;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Gouvernorat {
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer idGouvernorat;
	private String nomGouvernorat;
	
	
	/**
	 * @return the idGouvernorat
	 */
	public Integer getIdGouvernorat() {
		return idGouvernorat;
	}
	/**
	 * @param idGouvernorat the idGouvernorat to set
	 */
	public void setIdGouvernorat(Integer idGouvernorat) {
		this.idGouvernorat = idGouvernorat;
	}
	/**
	 * @return the nomGouvernorat
	 */
	public String getNomGouvernorat() {
		return nomGouvernorat;
	}
	/**
	 * @param nomGouvernorat the nomGouvernorat to set
	 */
	public void setNomGouvernorat(String nomGouvernorat) {
		this.nomGouvernorat = nomGouvernorat;
	}
	
	
}
