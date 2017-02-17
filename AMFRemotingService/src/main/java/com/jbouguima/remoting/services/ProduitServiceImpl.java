/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 17 janv. 2017
 *
 * crudflexspring / ProduitServiceImpl.java
 *
 **/
package com.jbouguima.remoting.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.flex.remoting.RemotingDestination;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jbouguima.remoting.model.gestionproduit.Produit;
import com.jbouguima.remoting.repository.ProduitRepository;

@Service("produitService") 
@RemotingDestination
@Transactional
public class ProduitServiceImpl implements ProduitService {

	@Autowired
	private ProduitRepository produitRepository;
	/* (non-Javadoc)
	 * @see com.jbouguima.remoting.services.ProduitService#findProduits()
	 */
	@Override
	public List<Produit> findProduits() {
		// TODO Auto-generated method stub
		return produitRepository.findAll();
	}

	/* (non-Javadoc)
	 * @see com.jbouguima.remoting.services.ProduitService#findOne(java.lang.Integer)
	 */
	@Override
	public Produit findOne(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see com.jbouguima.remoting.services.ProduitService#addProduit(com.jbouguima.remoting.model.gestionproduit.Produit)
	 */
	@Override
	public Produit addProduit(Produit client) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see com.jbouguima.remoting.services.ProduitService#updateProduit(com.jbouguima.remoting.model.gestionproduit.Produit)
	 */
	@Override
	public Produit updateProduit(Produit client) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see com.jbouguima.remoting.services.ProduitService#deleteProduit(java.lang.Integer)
	 */
	@Override
	public void deleteProduit(Integer id) {
		// TODO Auto-generated method stub

	}

}
