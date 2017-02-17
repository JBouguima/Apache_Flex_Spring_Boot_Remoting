/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 12 janv. 2017
 *
 * CRUDFlex3Services / Adresse.java
 *
 **/
package com.jbouguima.remoting.model.gestionclient;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class Adresse {

	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer idAdresse;
	private String nomRue;
	@OneToOne
	private Gouvernorat gouvernorat;
	
	/**
	 * @return the idAdresse
	 */
	public Integer getIdAdresse() {
		return idAdresse;
	}
	/**
	 * @param idAdresse the idAdresse to set
	 */
	public void setIdAdresse(Integer idAdresse) {
		this.idAdresse = idAdresse;
	}
	/**
	 * @return the nomRue
	 */
	public String getNomRue() {
		return nomRue;
	}
	/**
	 * @param nomRue the nomRue to set
	 */
	public void setNomRue(String nomRue) {
		this.nomRue = nomRue;
	}
	/**
	 * @return the gouvernorat
	 */
	public Gouvernorat getGouvernorat() {
		return gouvernorat;
	}
	/**
	 * @param gouvernorat the gouvernorat to set
	 */
	public void setGouvernorat(Gouvernorat gouvernorat) {
		this.gouvernorat = gouvernorat;
	}
	
	
}
