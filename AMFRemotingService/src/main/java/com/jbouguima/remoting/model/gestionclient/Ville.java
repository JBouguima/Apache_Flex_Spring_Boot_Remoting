/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 12 janv. 2017
 *
 * CRUDFlex3Services / Ville.java
 *
 **/
package com.jbouguima.remoting.model.gestionclient;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class Ville {
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer idVille;
	private String nomVille;
	@OneToOne
	private CodePostale codePostale;
	@OneToOne
	private Gouvernorat gouvernorat;
	
	
	/**
	 * @return the idVille
	 */
	public Integer getIdVille() {
		return idVille;
	}
	/**
	 * @param idVille the idVille to set
	 */
	public void setIdVille(Integer idVille) {
		this.idVille = idVille;
	}
	/**
	 * @return the nomVille
	 */
	public String getNomVille() {
		return nomVille;
	}
	/**
	 * @param nomVille the nomVille to set
	 */
	public void setNomVille(String nomVille) {
		this.nomVille = nomVille;
	}
	/**
	 * @return the codePostale
	 */
	public CodePostale getCodePostale() {
		return codePostale;
	}
	/**
	 * @param codePostale the codePostale to set
	 */
	public void setCodePostale(CodePostale codePostale) {
		this.codePostale = codePostale;
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
