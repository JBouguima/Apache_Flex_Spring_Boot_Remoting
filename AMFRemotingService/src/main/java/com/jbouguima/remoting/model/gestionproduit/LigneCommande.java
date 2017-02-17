/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 12 janv. 2017
 *
 * CRUDFlex3Services / LigneCommande.java
 *
 **/
package com.jbouguima.remoting.model.gestionproduit;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

/**
 * 
 */
@Entity
public class LigneCommande {

	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer idLigneCommande;
	@OneToOne
	private Produit produit;
	private Integer quantite;
	
	
	
	/**
	 * @return the idLigneCommande
	 */
	public Integer getIdLigneCommande() {
		return idLigneCommande;
	}
	/**
	 * @param idLigneCommande the idLigneCommande to set
	 */
	public void setIdLigneCommande(Integer idLigneCommande) {
		this.idLigneCommande = idLigneCommande;
	}
	/**
	 * @return the produit
	 */
	public Produit getProduit() {
		return produit;
	}
	/**
	 * @param produit the produit to set
	 */
	public void setProduit(Produit produit) {
		this.produit = produit;
	}
	/**
	 * @return the quantite
	 */
	public Integer getQuantite() {
		return quantite;
	}
	/**
	 * @param quantite the quantite to set
	 */
	public void setQuantite(Integer quantite) {
		this.quantite = quantite;
	}

	
}
