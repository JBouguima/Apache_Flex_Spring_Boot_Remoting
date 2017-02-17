package com.jbouguima.remoting.gestionclient.command
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.jbouguima.remoting.gestionclient.business.CommandeDelegate;
	import com.jbouguima.remoting.gestionclient.event.SaveCommandeEvent;
	import com.jbouguima.remoting.gestionclient.model.ClientModelLocator;
	
	import mx.rpc.IResponder;
	
	/**
	 * 
	 * @author: jbouguima
	 *  12/01/2017
	 * 
	 * */
	public class SaveCommandeCommand implements ICommand, IResponder
	{
		
		private var model:ClientModelLocator = ClientModelLocator.getInstance();
		
		
		public function SaveCommandeCommand()
		{
		}
		
		public function execute(event:CairngormEvent):void
		{
			var delegate:CommandeDelegate=new CommandeDelegate(this);
			var saveCommandeEvent:SaveCommandeEvent=SaveCommandeEvent(event);
			delegate.saveCommande(saveCommandeEvent.commande);
		}
		
		public function result(data:Object):void
		{
			var result:Object = data.result;
			model.saveCommandeResult(result);
		}
		
		public function fault(info:Object):void
		{
			model.reportServiceError(info);
		}
	}
}