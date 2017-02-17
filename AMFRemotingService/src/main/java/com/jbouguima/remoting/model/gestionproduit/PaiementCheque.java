/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 12 janv. 2017
 *
 * CRUDFlex3Services / PaiementCheque.java
 *
 **/
package com.jbouguima.remoting.model.gestionproduit;

import java.util.Date;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * 
 */
@Entity
@DiscriminatorValue(value = "PAIEMENT_CHEQUE")
public class PaiementCheque  extends TypePaiement {
	 
	private String numeroCheque;
	private Date dateVersementCheque;
	
	/**
	 * @return the numeroCheque
	 */
	public String getNumeroCheque() {
		return numeroCheque;
	}
	/**
	 * @param numeroCheque the numeroCheque to set
	 */
	public void setNumeroCheque(String numeroCheque) {
		this.numeroCheque = numeroCheque;
	}
	/**
	 * @return the dateVersementCheque
	 */
	public Date getDateVersementCheque() {
		return dateVersementCheque;
	}
	/**
	 * @param dateVersementCheque the dateVersementCheque to set
	 */
	public void setDateVersementCheque(Date dateVersementCheque) {
		this.dateVersementCheque = dateVersementCheque;
	}

	
}
