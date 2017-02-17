/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 17 janv. 2017
 *
 * crudflexspring / CodePostaleService.java
 *
 **/
package com.jbouguima.remoting.services;

import java.util.List;

import com.jbouguima.remoting.model.gestionclient.CodePostale;


public interface CodePostaleService {

	public List<CodePostale> findCodePostales();
	public CodePostale findOne(Integer id);
	public CodePostale addCodePostale(CodePostale client);
	public CodePostale updateCodePostale(CodePostale client);
	public void deleteCodePostale(Integer id);
}
