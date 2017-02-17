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
	public class LoadTypeIdListEvent extends CairngormEvent
	{
		public static var  LOAD_TYPES_ID_LIST_EVENT:String="loadTypeIdListEvent"
		
		public function LoadTypeIdListEvent()
		{
			super(LoadTypeIdListEvent.LOAD_TYPES_ID_LIST_EVENT);
		}
		
		public override function clone():Event{
			return new LoadTypeIdListEvent();
		}
		
	}
}