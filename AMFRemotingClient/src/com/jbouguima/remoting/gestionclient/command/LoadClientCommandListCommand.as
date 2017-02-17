package com.jbouguima.remoting.gestionclient.command
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.jbouguima.remoting.gestionclient.business.CommandeDelegate;
	import com.jbouguima.remoting.gestionclient.event.LoadClientCommandListEvent;
	import com.jbouguima.remoting.gestionclient.model.ClientModelLocator;
	
	import mx.rpc.IResponder;
	
	/**
	 * 
	 * @author: jbouguima
	 *  12/01/2017
	 * 
	 * */
	public class LoadClientCommandListCommand implements ICommand, IResponder
	{
		var model:ClientModelLocator = ClientModelLocator.getInstance();
		
		public function LoadClientCommandListCommand()
		{
		}
		
		public function execute(event:CairngormEvent):void
		{
			var delegate:CommandeDelegate=new CommandeDelegate(this);
			var loadCommandeByClientEvent:LoadClientCommandListEvent=LoadClientCommandListEvent(event);
			delegate.loadCommandesByClient(loadCommandeByClientEvent.client);
		}
		
		public function result(data:Object):void
		{
			var result:Object = data.result;
			model.loadCommandeByClientResult(result);
		}
		
		public function fault(info:Object):void
		{
			model.reportServiceError(info);
		}
	}
}