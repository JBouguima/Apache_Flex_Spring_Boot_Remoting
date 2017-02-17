package com.jbouguima.remoting.gestionclient.event
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.jbouguima.remoting.vo.gestionclient.Client;
	
	import flash.events.Event;
	
	/**
	 * 
	 * @author: jbouguima
	 *  12/01/2017
	 * 
	 * */
	public class LoadClientCommandListEvent extends CairngormEvent
	{
		public var client:Client;
		public static var  LOAD_CLIENT_COMMANDS_EVENT:String="loadClientCommandListEvent"
		
		public function LoadClientCommandListEvent(client:Client)
		{
			super(LoadClientCommandListEvent.LOAD_CLIENT_COMMANDS_EVENT);
			this.client = client;
		}
		
		public override function clone():Event{
			return new LoadClientCommandListEvent(client);
		}
		
		
	}
}