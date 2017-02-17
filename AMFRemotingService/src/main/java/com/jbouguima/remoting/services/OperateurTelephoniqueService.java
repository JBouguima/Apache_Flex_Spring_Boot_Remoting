/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 17 janv. 2017
 *
 * crudflexspring / OperateurTelephonique.java
 *
 **/
package com.jbouguima.remoting.services;

import java.util.List;


public interface OperateurTelephoniqueService {

	public List<OperateurTelephoniqueService> findOperateurTelephoniques();
	public OperateurTelephoniqueService findOne(Integer id);
	public OperateurTelephoniqueService addOperateurTelephonique(OperateurTelephoniqueService operateurTelephonique);
	public OperateurTelephoniqueService updateOperateurTelephonique(OperateurTelephoniqueService operateurTelephonique);
	public void deleteOperateurTelephonique(Integer id);
}
