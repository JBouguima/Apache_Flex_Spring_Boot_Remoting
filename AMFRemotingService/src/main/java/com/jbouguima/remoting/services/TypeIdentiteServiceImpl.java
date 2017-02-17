/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 17 janv. 2017
 *
 * crudflexspring / TypeIdentiteServiceImpl.java
 *
 **/
package com.jbouguima.remoting.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.flex.remoting.RemotingDestination;
import org.springframework.stereotype.Service;

import com.jbouguima.remoting.model.gestionclient.TypeIdentite;
import com.jbouguima.remoting.repository.TypeIdentiteRepository;

@Service("typeIdentiteService") 
@RemotingDestination
public class TypeIdentiteServiceImpl implements TypeIdentiteService {

	@Autowired
	private TypeIdentiteRepository typeIdentiteRepository;
	/* (non-Javadoc)
	 * @see com.jbouguima.remoting.services.TypeIdentiteService#findTypeIdentites()
	 */
	@Override
	public List<TypeIdentite> findTypeIdentites() {
		// TODO Auto-generated method stub
		return typeIdentiteRepository.findAll();
	}

	/* (non-Javadoc)
	 * @see com.jbouguima.remoting.services.TypeIdentiteService#findOne(java.lang.Integer)
	 */
	@Override
	public TypeIdentite findOne(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see com.jbouguima.remoting.services.TypeIdentiteService#addTypeIdentite(com.jbouguima.remoting.model.gestionclient.TypeIdentite)
	 */
	@Override
	public TypeIdentite addTypeIdentite(TypeIdentite typeIdentite) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see com.jbouguima.remoting.services.TypeIdentiteService#updateTypeIdentite(com.jbouguima.remoting.model.gestionclient.TypeIdentite)
	 */
	@Override
	public TypeIdentite updateTypeIdentite(TypeIdentite typeIdentite) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see com.jbouguima.remoting.services.TypeIdentiteService#deleteTypeIdentite(java.lang.Integer)
	 */
	@Override
	public void deleteTypeIdentite(Integer id) {
		// TODO Auto-generated method stub

	}

}
