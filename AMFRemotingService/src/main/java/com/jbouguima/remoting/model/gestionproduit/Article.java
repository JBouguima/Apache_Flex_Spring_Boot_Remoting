/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 12 janv. 2017
 *
 * CRUDFlex3Services / Article.java
 *
 **/
package com.jbouguima.remoting.model.gestionproduit;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Article {

	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer idArticle;
	private String codeArticle;
	private Date dateCreation;
	
	/**
	 * @return the idArticle
	 */
	public Integer getIdArticle() {
		return idArticle;
	}
	/**
	 * @param idArticle the idArticle to set
	 */
	public void setIdArticle(Integer idArticle) {
		this.idArticle = idArticle;
	}
	/**
	 * @return the codeArticle
	 */
	public String getCodeArticle() {
		return codeArticle;
	}
	/**
	 * @param codeArticle the codeArticle to set
	 */
	public void setCodeArticle(String codeArticle) {
		this.codeArticle = codeArticle;
	}
	/**
	 * @return the dateCreation
	 */
	public Date getDateCreation() {
		return dateCreation;
	}
	/**
	 * @param dateCreation the dateCreation to set
	 */
	public void setDateCreation(Date dateCreation) {
		this.dateCreation = dateCreation;
	}

	
}
