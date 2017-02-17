/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 12 janv. 2017
 *
 * CRUDFlex3Services / Telephone.java
 *
 **/
package com.jbouguima.remoting.model.gestionclient;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Telephone {


	@Id
	private String numeroTelephone;
	@ManyToOne
	private OperateurTelephonique operateurTelephonique;
	
	
	/**
	 * @return the numeroTelephone
	 */
	public String getNumeroTelephone() {
		return numeroTelephone;
	}
	/**
	 * @param numeroTelephone the numeroTelephone to set
	 */
	public void setNumeroTelephone(String numeroTelephone) {
		this.numeroTelephone = numeroTelephone;
	}
	/**
	 * @return the operateurTelephonique
	 */
	public OperateurTelephonique getOperateurTelephonique() {
		return operateurTelephonique;
	}
	/**
	 * @param operateurTelephonique the operateurTelephonique to set
	 */
	public void setOperateurTelephonique(OperateurTelephonique operateurTelephonique) {
		this.operateurTelephonique = operateurTelephonique;
	}
	
	
}
