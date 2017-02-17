/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 17 janv. 2017
 *
 * crudflexspring / PersonneServiceImpl.java
 *
 **/
package com.jbouguima.remoting.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.flex.remoting.RemotingDestination;
import org.springframework.stereotype.Service;

import com.jbouguima.remoting.model.gestionclient.Personne;
import com.jbouguima.remoting.repository.PersonneRepository;

@Service("personneService") 
@RemotingDestination
public class PersonneServiceImpl implements PersonneService {

	@Autowired
	private PersonneRepository personneRepository;
	
	/* (non-Javadoc)
	 * @see com.jbouguima.remoting.services.PersonneService#findPersonnes()
	 */
	@Override
	public List<Personne> findPersonnes() {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see com.jbouguima.remoting.services.PersonneService#findOne(java.lang.Integer)
	 */
	@Override
	public Personne findOne(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see com.jbouguima.remoting.services.PersonneService#addPersonne(com.jbouguima.remoting.model.gestionclient.Personne)
	 */
	@Override
	public Personne addPersonne(Personne personne) {
		// TODO Auto-generated method stub
		return personneRepository.save(personne);
	}

	/* (non-Javadoc)
	 * @see com.jbouguima.remoting.services.PersonneService#updatePersonne(com.jbouguima.remoting.model.gestionclient.Personne)
	 */
	@Override
	public Personne updatePersonne(Personne personne) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see com.jbouguima.remoting.services.PersonneService#deletePersonne(java.lang.Integer)
	 */
	@Override
	public void deletePersonne(Integer id) {
		// TODO Auto-generated method stub

	}

}
