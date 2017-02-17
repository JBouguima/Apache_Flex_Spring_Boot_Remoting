package com.jbouguima.remoting.gestionclient.business
{
	import com.adobe.cairngorm.business.ServiceLocator;
	import com.jbouguima.remoting.vo.gestionclient.Client;
	import com.jbouguima.remoting.vo.gestionproduit.Commande;
	
	import mx.rpc.AsyncToken;
	import mx.rpc.IResponder;
	
	/**
	 * 
	 * @author: jbouguima
	 *  12/01/2017
	 * 
	 * */
	public class CommandeDelegate
	{
		
		public var responder:IResponder;
		public var service:Object;
		
		public function CommandeDelegate(responder:IResponder)
		{
			this.responder=responder;
			this.service=ServiceLocator.getInstance().getRemoteObject("commandeRO");
		}
		
		
		public function loadCommandesByClient(client:Client):void
		{
			var token:AsyncToken=service.findCommandesByClient(client);
			token.addResponder(responder);
		}
		
		public function saveCommande(commande:Commande):void
		{
			var token:AsyncToken=service.addCommande(commande);
			token.addResponder(responder);
		}
		
		
	}
}