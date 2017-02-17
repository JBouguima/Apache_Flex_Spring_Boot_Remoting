/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 17 janv. 2017
 *
 * crudflexspring / GouvernoratService.java
 *
 **/
package com.jbouguima.remoting.services;

import java.util.List;

import com.jbouguima.remoting.model.gestionclient.Gouvernorat;


/**
 * 
 */
public interface GouvernoratService {

	public List<Gouvernorat> findGouvernorats();
	public Gouvernorat findOne(Integer id);
	public Gouvernorat addGouvernorat(Gouvernorat gouvernorat);
	public Gouvernorat updateGouvernorat(Gouvernorat gouvernorat);
	public void deleteGouvernorat(Integer id);
}
