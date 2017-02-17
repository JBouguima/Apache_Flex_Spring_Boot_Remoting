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
	public class GovDelegate
	{
		
		public var responder:IResponder;
		public var service:Object;
		
		public function GovDelegate(responder:IResponder)
		{
			this.responder=responder;
			this.service=ServiceLocator.getInstance().getRemoteObject("govRO");
		}
		
		public function loadGovList():void
		{
			var token:AsyncToken=service.findGouvernorats();
			token.addResponder(responder);
		}
		
	}
}