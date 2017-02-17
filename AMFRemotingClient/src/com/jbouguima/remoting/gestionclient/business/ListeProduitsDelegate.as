package com.jbouguima.remoting.gestionclient.business
{
	import com.adobe.cairngorm.business.ServiceLocator;
	
	import mx.rpc.AsyncToken;
	import mx.rpc.IResponder;
	
	/**
	 * 
	 * @author: jbouguima
	 *  12/01/2017
	 * 
	 * */
	public class ListeProduitsDelegate
	{
		
		public var responder:IResponder;
		public var service:Object;
		
		public function ListeProduitsDelegate(responder:IResponder)
		{
			this.responder=responder;
			this.service=ServiceLocator.getInstance().getRemoteObject("produitRO");
		}
		
		public function loadProduits():void
		{
			var token:AsyncToken=service.findProduits();
			token.addResponder(responder);
		}
		
		
		
	}
}