/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 12 janv. 2017
 *
 * CRUDFlex3Services / TypePaiement.java
 *
 **/
package com.jbouguima.remoting.model.gestionproduit;

import java.util.Date;

import javax.persistence.DiscriminatorColumn;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.Table;

/**
 * 
 */
@Entity
@Table(name = "type_paiement")
@Inheritance(strategy = InheritanceType.SINGLE_TABLE)
@DiscriminatorColumn(name = "TYPE_PAIEMENT")
public abstract class TypePaiement {
	
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer idTypePaiement;
	private Integer montantPaiement;
	private Date dateReception;
	
	/**
	 * @return the idTypePaiement
	 */
	public Integer getIdTypePaiement() {
		return idTypePaiement;
	}
	/**
	 * @param idTypePaiement the idTypePaiement to set
	 */
	public void setIdTypePaiement(Integer idTypePaiement) {
		this.idTypePaiement = idTypePaiement;
	}
	/**
	 * @return the montantPaiement
	 */
	public Integer getMontantPaiement() {
		return montantPaiement;
	}
	/**
	 * @param montantPaiement the montantPaiement to set
	 */
	public void setMontantPaiement(Integer montantPaiement) {
		this.montantPaiement = montantPaiement;
	}
	/**
	 * @return the dateReception
	 */
	public Date getDateReception() {
		return dateReception;
	}
	/**
	 * @param dateReception the dateReception to set
	 */
	public void setDateReception(Date dateReception) {
		this.dateReception = dateReception;
	}
	
	
}
