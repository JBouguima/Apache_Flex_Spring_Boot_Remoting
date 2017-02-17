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
	public class LoadProduitsEvent extends CairngormEvent
	{
		
		public static var  LOAD_PRODUITS_EVENT:String="loadProduitsEvent"
		
		public function LoadProduitsEvent()
		{
			super(LoadProduitsEvent.LOAD_PRODUITS_EVENT);
		}
		
		public override function clone():Event{
			return new LoadProduitsEvent();
		}
	}
}