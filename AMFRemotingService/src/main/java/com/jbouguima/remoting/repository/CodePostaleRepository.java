/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 12 janv. 2017
 *
 * CRUDFlex3Services / CodePostaleRepository.java
 *
 **/
package com.jbouguima.remoting.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.jbouguima.remoting.model.gestionclient.CodePostale;


public interface CodePostaleRepository extends JpaRepository<CodePostale, Integer> {

}
