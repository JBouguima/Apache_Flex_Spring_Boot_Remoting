/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 12 janv. 2017
 *
 * CRUDFlex3Services / ProfessionRepository.java
 *
 **/
package com.jbouguima.remoting.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.jbouguima.remoting.model.gestionclient.Profession;


public interface ProfessionRepository extends JpaRepository<Profession, Integer> {

}
