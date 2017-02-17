/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 17 janv. 2017
 *
 * crudflexspring / TypeIdentiteService.java
 *
 **/
package com.jbouguima.remoting.services;

import java.util.List;

import com.jbouguima.remoting.model.gestionclient.TypeIdentite;


public interface TypeIdentiteService {

	public List<TypeIdentite> findTypeIdentites();
	public TypeIdentite findOne(Integer id);
	public TypeIdentite addTypeIdentite(TypeIdentite typeIdentite);
	public TypeIdentite updateTypeIdentite(TypeIdentite typeIdentite);
	public void deleteTypeIdentite(Integer id);
}
