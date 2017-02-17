/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 12 janv. 2017
 *
 * CRUDFlex3Services / IdentitePersonne.java
 *
 **/
package com.jbouguima.remoting.model.gestionclient;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class IdentitePersonne {

	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer idIdentite;
	@OneToOne
	private TypeIdentite typeIdentite;
	private String numeroIdentite;
	private Date dateDelivrance;
	private Boolean identitePrincipale;
	
	
	/**
	 * @return the idIdentite
	 */
	public Integer getIdIdentite() {
		return idIdentite;
	}
	/**
	 * @param idIdentite the idIdentite to set
	 */
	public void setIdIdentite(Integer idIdentite) {
		this.idIdentite = idIdentite;
	}
	/**
	 * @return the typeIdentite
	 */
	public TypeIdentite getTypeIdentite() {
		return typeIdentite;
	}
	/**
	 * @param typeIdentite the typeIdentite to set
	 */
	public void setTypeIdentite(TypeIdentite typeIdentite) {
		this.typeIdentite = typeIdentite;
	}
	/**
	 * @return the numeroIdentite
	 */
	public String getNumeroIdentite() {
		return numeroIdentite;
	}
	/**
	 * @param numeroIdentite the numeroIdentite to set
	 */
	public void setNumeroIdentite(String numeroIdentite) {
		this.numeroIdentite = numeroIdentite;
	}
	/**
	 * @return the dateDelivrance
	 */
	public Date getDateDelivrance() {
		return dateDelivrance;
	}
	/**
	 * @param dateDelivrance the dateDelivrance to set
	 */
	public void setDateDelivrance(Date dateDelivrance) {
		this.dateDelivrance = dateDelivrance;
	}
	/**
	 * @return the identitePrincipale
	 */
	public Boolean getIdentitePrincipale() {
		return identitePrincipale;
	}
	/**
	 * @param identitePrincipale the identitePrincipale to set
	 */
	public void setIdentitePrincipale(Boolean identitePrincipale) {
		this.identitePrincipale = identitePrincipale;
	}
	
	


}
