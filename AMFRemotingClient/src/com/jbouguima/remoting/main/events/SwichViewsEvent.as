package com.jbouguima.remoting.main.events
{
	import com.jbouguima.remoting.vo.gestionclient.Client;
	
	import flash.events.Event;
	
	/**
	 * 
	 * @author: jbouguima
	 *  12/01/2017
	 * 
	 * */
	public class SwichViewsEvent extends Event
	{
		
		public static var SHOW_ORDERS_VIEW_EVENT:String = "showOrdersViewEvent";
		public static var HIDE_ORDERS_VIEW_EVENT:String = "hideOrdersViewEvent";
		
		public var clientVo:Client;
		
		public function SwichViewsEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	}
}