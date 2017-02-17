package com.jbouguima.remoting.gestionclient.command
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.jbouguima.remoting.gestionclient.business.TypeIdDelegate;
	import com.jbouguima.remoting.gestionclient.model.ClientModelLocator;
	
	import mx.rpc.IResponder;
	
	/**
	 * 
	 * @author: jbouguima
	 *  12/01/2017
	 * 
	 * */
	public class LoadTypeIdListCommand implements ICommand, IResponder
	{
		private var model:ClientModelLocator = ClientModelLocator.getInstance();
		
		public function LoadTypeIdListCommand()
		{
		}
		
		public function execute(event:CairngormEvent):void
		{
			var delegate:TypeIdDelegate=new TypeIdDelegate(this);
			delegate.loadTypeIdList();
		}
		
		public function result(data:Object):void
		{
			var result:Object=data.result;
			model.loadTypeIdListResult(result);
		}
		
		public function fault(info:Object):void
		{
			model.reportServiceError(info);
		}
	}
}