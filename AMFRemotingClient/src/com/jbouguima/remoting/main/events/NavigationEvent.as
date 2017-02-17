package com.jbouguima.remoting.main.events
{
	
	import flash.events.Event;
	
	/**
	 * 
	 * @author: jbouguima
	 *  12/01/2017
	 * 
	 * */
	public class NavigationEvent extends Event
	{
		
		public static var HOME_BTN_NAVIGATION_EVENT:String = "homeBtnNavigationEvent";
		public static var OPEN_POPUP_EVENT:String = "openClientOpeEvent";
		public var destination:String;
		
		public function NavigationEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	}
}