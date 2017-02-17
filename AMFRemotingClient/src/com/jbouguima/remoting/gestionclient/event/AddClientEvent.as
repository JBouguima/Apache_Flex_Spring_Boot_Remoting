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
	public class AddClientEvent extends CairngormEvent
	{
		
		public var client:Client;
		public static var  ADD_CLIENT_EVENT:String="addClientEvent"
			
		public function AddClientEvent(client:Client)
		{
			super(AddClientEvent.ADD_CLIENT_EVENT);
			this.client = client;
		}
		
		public override function clone():Event{
			return new AddClientEvent(client);
		}
		
		
	}
}