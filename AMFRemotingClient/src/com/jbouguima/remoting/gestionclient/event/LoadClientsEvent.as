package com.jbouguima.remoting.gestionclient.event
{
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import flash.events.Event;
	
	/**
	 * 
	 * @author: jbouguima
	 *  12/01/2017
	 * 
	 * */
	public class LoadClientsEvent extends CairngormEvent
	{
		
		public static var  LOAD_CLIENTS_EVENT:String="loadClientsEvent"
			
		public function LoadClientsEvent()
		{
			super(LoadClientsEvent.LOAD_CLIENTS_EVENT);
		}
		
		public override function clone():Event{
			return new LoadClientsEvent();
		}
		
		
	}
}