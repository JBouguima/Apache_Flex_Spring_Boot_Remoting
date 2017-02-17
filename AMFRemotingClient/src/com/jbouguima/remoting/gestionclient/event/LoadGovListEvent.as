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
	public class LoadGovListEvent extends CairngormEvent
	{
		
		public static var  LOAD_GOVLIST_EVENT:String="loadGovListEvent"
			
		public function LoadGovListEvent()
		{
			super(LoadGovListEvent.LOAD_GOVLIST_EVENT);
		}
		
		public override function clone():Event{
			return new LoadGovListEvent();
		}
		
		
	}
}