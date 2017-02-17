package com.jbouguima.remoting.gestionclient.business
{
	import com.adobe.cairngorm.business.ServiceLocator;
	import com.jbouguima.remoting.vo.gestionclient.Client;
	
	import mx.rpc.AsyncToken;
	import mx.rpc.IResponder;
	
	/**
	 * 
	 * @author: jbouguima
	 *  12/01/2017
	 * 
	 * */
	public class ClientDelegate
	{
		
		public var responder:IResponder;
		public var service:Object;
		
		public function ClientDelegate(responder:IResponder)
		{
			this.responder=responder;
			this.service=ServiceLocator.getInstance().getRemoteObject("clientRO");
		}
		
		public function addClient(client:Client):void
		{
			var token:AsyncToken=service.addClient(client);
			token.addResponder(responder);
		}
		
		public function loadClients():void
		{
			var token:AsyncToken=service.findClients();
			token.addResponder(responder);
		}
		
	}
}