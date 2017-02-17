package com.jbouguima.remoting.gestionclient.helpers
{
	import com.jbouguima.remoting.vo.gestionproduit.Commande;
	
	/**
	 * 
	 * @author: jbouguima
	 *  12/01/2017
	 * 
	 * */
	public interface SaveCommandeManager
	{
		function resultSaveCommandeOp(value:Commande):void;
	}
}