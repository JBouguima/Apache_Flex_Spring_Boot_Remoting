/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 12 janv. 2017
 *
 * CRUDFlex3Services / Produit.java
 *
 **/
package com.jbouguima.remoting.model.gestionproduit;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 * 
 */
@Entity
public class Produit {
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer idProduit;
	private String nomProduit;
	private String codeProduit;
	private String referenceProduit;
	private Integer quantiteStock;
	private Integer prixVenteUnitaire;
	
	
	/**
	 * @return the idProduit
	 */
	public Integer getIdProduit() {
		return idProduit;
	}
	/**
	 * @param idProduit the idProduit to set
	 */
	public void setIdProduit(Integer idProduit) {
		this.idProduit = idProduit;
	}
	/**
	 * @return the nomProduit
	 */
	public String getNomProduit() {
		return nomProduit;
	}
	/**
	 * @param nomProduit the nomProduit to set
	 */
	public void setNomProduit(String nomProduit) {
		this.nomProduit = nomProduit;
	}
	/**
	 * @return the codeProduit
	 */
	public String getCodeProduit() {
		return codeProduit;
	}
	/**
	 * @param codeProduit the codeProduit to set
	 */
	public void setCodeProduit(String codeProduit) {
		this.codeProduit = codeProduit;
	}
	/**
	 * @return the referenceProduit
	 */
	public String getReferenceProduit() {
		return referenceProduit;
	}
	/**
	 * @param referenceProduit the referenceProduit to set
	 */
	public void setReferenceProduit(String referenceProduit) {
		this.referenceProduit = referenceProduit;
	}
	/**
	 * @return the quantiteStock
	 */
	public Integer getQuantiteStock() {
		return quantiteStock;
	}
	/**
	 * @param quantiteStock the quantiteStock to set
	 */
	public void setQuantiteStock(Integer quantiteStock) {
		this.quantiteStock = quantiteStock;
	}
	/**
	 * @return the prixVenteUnitaire
	 */
	public Integer getPrixVenteUnitaire() {
		return prixVenteUnitaire;
	}
	/**
	 * @param prixVenteUnitaire the prixVenteUnitaire to set
	 */
	public void setPrixVenteUnitaire(Integer prixVenteUnitaire) {
		this.prixVenteUnitaire = prixVenteUnitaire;
	}

	
	
}
