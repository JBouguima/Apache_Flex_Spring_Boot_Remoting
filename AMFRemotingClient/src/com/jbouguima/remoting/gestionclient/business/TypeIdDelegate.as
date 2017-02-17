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
	public class TypeIdDelegate
	{
		
		public var responder:IResponder;
		public var service:Object;
		
		public function TypeIdDelegate(responder:IResponder)
		{
			this.responder=responder;
			this.service=ServiceLocator.getInstance().getRemoteObject("typesIdRO");
		}
		
		public function loadTypeIdList():void
		{
			var token:AsyncToken=service.findTypeIdentites();
			token.addResponder(responder);
		}
	}
}