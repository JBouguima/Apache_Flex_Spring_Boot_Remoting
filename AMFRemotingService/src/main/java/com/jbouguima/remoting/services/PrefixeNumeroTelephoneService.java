/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 17 janv. 2017
 *
 * crudflexspring / PrefixeNumeroTelephoneService.java
 *
 **/
package com.jbouguima.remoting.services;

import java.util.List;

import com.jbouguima.remoting.model.gestionclient.PrefixeNumeroTelephone;


public interface PrefixeNumeroTelephoneService {

	public List<PrefixeNumeroTelephone> findPrefixeNumeroTelephones();
	public PrefixeNumeroTelephone findOne(Integer id);
	public PrefixeNumeroTelephone addPrefixeNumeroTelephone(PrefixeNumeroTelephone prefixeNumeroTelephone);
	public PrefixeNumeroTelephone updatePrefixeNumeroTelephone(PrefixeNumeroTelephone prefixeNumeroTelephone);
	public void deletePrefixeNumeroTelephone(Integer id);
}
