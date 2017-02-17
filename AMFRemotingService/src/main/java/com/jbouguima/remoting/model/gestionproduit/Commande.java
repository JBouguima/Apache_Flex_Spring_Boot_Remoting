/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 12 janv. 2017
 *
 * CRUDFlex3Services / Commande.java
 *
 **/
package com.jbouguima.remoting.model.gestionproduit;

import java.util.Date;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import com.jbouguima.remoting.model.gestionclient.Client;

/**
 * 
 */
@Entity
public class Commande {
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer idCommande;
	private Date dateCommande;
	private Integer montantTotal;
	@OneToOne
	private Client client;
	
	@OneToMany(fetch = FetchType.EAGER, targetEntity = LigneCommande.class, cascade = CascadeType.ALL)
	private Set<LigneCommande> lignesCommande; // Set<LigneCommande>
	
	@OneToOne(cascade=CascadeType.ALL)
	private TypePaiement typePaiement;
	
	/**
	 * @return the idCommande
	 */
	public Integer getIdCommande() {
		return idCommande;
	}
	/**
	 * @param idCommande the idCommande to set
	 */
	public void setIdCommande(Integer idCommande) {
		this.idCommande = idCommande;
	}
	/**
	 * @return the dateCommande
	 */
	public Date getDateCommande() {
		return dateCommande;
	}
	/**
	 * @param dateCommande the dateCommande to set
	 */
	public void setDateCommande(Date dateCommande) {
		this.dateCommande = dateCommande;
	}
	/**
	 * @return the montantTotal
	 */
	public Integer getMontantTotal() {
		return montantTotal;
	}
	/**
	 * @param montantTotal the montantTotal to set
	 */
	public void setMontantTotal(Integer montantTotal) {
		this.montantTotal = montantTotal;
	}
	/**
	 * @return the client
	 */
	public Client getClient() {
		return client;
	}
	/**
	 * @param client the client to set
	 */
	public void setClient(Client client) {
		this.client = client;
	}
	/**
	 * @return the lignesCommande
	 */
	public Set<LigneCommande> getLignesCommande() {
		return lignesCommande;
	}
	/**
	 * @param lignesCommande the lignesCommande to set
	 */
	public void setLignesCommande(Set<LigneCommande> lignesCommande) {
		this.lignesCommande = lignesCommande;
	}
	/**
	 * @return the typePaiement
	 */
	public TypePaiement getTypePaiement() {
		return typePaiement;
	}
	/**
	 * @param typePaiement the typePaiement to set
	 */
	public void setTypePaiement(TypePaiement typePaiement) {
		this.typePaiement = typePaiement;
	}

	
}
