package com.jbouguima.remoting.gestionclient.command
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.jbouguima.remoting.gestionclient.business.ClientDelegate;
	import com.jbouguima.remoting.gestionclient.event.LoadClientsEvent;
	import com.jbouguima.remoting.gestionclient.model.ClientModelLocator;
	
	import mx.rpc.IResponder;
	
	/**
	 * 
	 * @author: jbouguima
	 *  12/01/2017
	 * 
	 * */
	public class LoadClientsCommand implements ICommand, IResponder
	{
		
		private var model:ClientModelLocator = ClientModelLocator.getInstance();
		
		
		public function LoadClientsCommand()
		{
		}
		
		public function execute(event:CairngormEvent):void
		{
			var delegate:ClientDelegate=new ClientDelegate(this);
			//var loadClientsEvent:LoadClientsEvent = new LoadClientsEvent();
			delegate.loadClients();
		}
		
		public function result(data:Object):void
		{
			var result:Object=data.result;
			model.loadClientsResult(result);
		}
		
		public function fault(info:Object):void
		{
			model.reportServiceError(info);
		}
	}
}