/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 10 janv. 2017
 *
 * CRUDFlex3Services / ClientRepository.java
 *
 **/
package com.jbouguima.remoting.repository;

import org.springframework.transaction.annotation.Transactional;

import com.jbouguima.remoting.model.gestionclient.Client;

@Transactional
public interface ClientRepository extends UserBaseRepository<Client> {

}
