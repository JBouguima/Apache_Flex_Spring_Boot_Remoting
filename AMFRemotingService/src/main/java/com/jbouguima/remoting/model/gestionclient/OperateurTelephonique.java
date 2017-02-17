/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 12 janv. 2017
 *
 * CRUDFlex3Services / OperateurTelephonique.java
 *
 **/
package com.jbouguima.remoting.model.gestionclient;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class OperateurTelephonique {
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer idOperateurTelephonique;
	public String nomOperateurTelephonique;

	@ManyToOne(targetEntity = PrefixeNumeroTelephone.class)
	public Set<PrefixeNumeroTelephone> prefixes; //  

	/**
	 * @return the idOperateurTelephonique
	 */
	public Integer getIdOperateurTelephonique() {
		return idOperateurTelephonique;
	}

	/**
	 * @param idOperateurTelephonique the idOperateurTelephonique to set
	 */
	public void setIdOperateurTelephonique(Integer idOperateurTelephonique) {
		this.idOperateurTelephonique = idOperateurTelephonique;
	}

	/**
	 * @return the nomOperateurTelephonique
	 */
	public String getNomOperateurTelephonique() {
		return nomOperateurTelephonique;
	}

	/**
	 * @param nomOperateurTelephonique the nomOperateurTelephonique to set
	 */
	public void setNomOperateurTelephonique(String nomOperateurTelephonique) {
		this.nomOperateurTelephonique = nomOperateurTelephonique;
	}

	/**
	 * @return the prefixes
	 */
	public Set<PrefixeNumeroTelephone> getPrefixes() {
		return prefixes;
	}

	/**
	 * @param prefixes the prefixes to set
	 */
	public void setPrefixes(Set<PrefixeNumeroTelephone> prefixes) {
		this.prefixes = prefixes;
	}

	
}
