/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 17 janv. 2017
 *
 * crudflexspring / GouvernoratServiceImpl.java
 *
 **/
package com.jbouguima.remoting.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.flex.remoting.RemotingDestination;
import org.springframework.stereotype.Service;

import com.jbouguima.remoting.model.gestionclient.Gouvernorat;
import com.jbouguima.remoting.repository.GouvernoratRepository;

@Service("gouvernoratService") 
@RemotingDestination
public class GouvernoratServiceImpl implements GouvernoratService {

	@Autowired
	private GouvernoratRepository gouvernoratRepository;
	/* (non-Javadoc)
	 * @see com.jbouguima.remoting.services.GouvernoratService#findGouvernorats()
	 */
	@Override
	public List<Gouvernorat> findGouvernorats() {
		// TODO Auto-generated method stub
		return gouvernoratRepository.findAll();
	}

	/* (non-Javadoc)
	 * @see com.jbouguima.remoting.services.GouvernoratService#findOne(java.lang.Integer)
	 */
	@Override
	public Gouvernorat findOne(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see com.jbouguima.remoting.services.GouvernoratService#addGouvernorat(com.jbouguima.remoting.model.gestionclient.Gouvernorat)
	 */
	@Override
	public Gouvernorat addGouvernorat(Gouvernorat gouvernorat) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see com.jbouguima.remoting.services.GouvernoratService#updateGouvernorat(com.jbouguima.remoting.model.gestionclient.Gouvernorat)
	 */
	@Override
	public Gouvernorat updateGouvernorat(Gouvernorat gouvernorat) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see com.jbouguima.remoting.services.GouvernoratService#deleteGouvernorat(java.lang.Integer)
	 */
	@Override
	public void deleteGouvernorat(Integer id) {
		// TODO Auto-generated method stub

	}

}
