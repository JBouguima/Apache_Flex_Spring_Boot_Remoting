package com.jbouguima.remoting.gestionclient.command
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.jbouguima.remoting.gestionclient.business.ListeProduitsDelegate;
	import com.jbouguima.remoting.gestionclient.model.ClientModelLocator;
	
	import mx.rpc.IResponder;
	
	/**
	 * 
	 * @author: jbouguima
	 *  12/01/2017
	 * 
	 * */
	public class LoadProduitCommand implements ICommand, IResponder
	{
		private var clientModelLocator:ClientModelLocator = ClientModelLocator.getInstance();
		
		public function LoadProduitCommand()
		{
		}
		
		public function execute(event:CairngormEvent):void
		{
			var delegate:ListeProduitsDelegate=new ListeProduitsDelegate(this);
			delegate.loadProduits();
		}
		
		public function result(data:Object):void
		{
			var result:Object=data.result;
			clientModelLocator.loadProduitsResult(result);
		}
		
		public function fault(info:Object):void
		{
			clientModelLocator.reportServiceError(info);
		}
	}
}