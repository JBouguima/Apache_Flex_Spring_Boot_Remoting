/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 10 janv. 2017
 *
 * CRUDFlex3Services / Client.java
 *
 **/
package com.jbouguima.remoting.model.gestionclient;

import javax.persistence.Column;
import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;

@Entity
@DiscriminatorValue(value = "CLIENT")
public class Client extends Personne{

	@Column(name="codeClient")
	private String codeClient;

	/**
	 * @return the codeClient
	 */
	public String getCodeClient() {
		return codeClient;
	}

	/**
	 * @param codeClient the codeClient to set
	 */
	public void setCodeClient(String codeClient) {
		this.codeClient = codeClient;
	}
	
	
}
