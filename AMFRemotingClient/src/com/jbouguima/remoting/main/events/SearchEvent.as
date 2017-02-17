package com.jbouguima.remoting.main.events
{
	import flash.events.Event;
	
	/**
	 * 
	 * @author: jbouguima
	 *  12/01/2017
	 * 
	 * */
	public class SearchEvent extends Event
	{
		
		public static var SEARCH_EVENT:String = "searchEvent";
		public var searchString:String;

		public function SearchEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	}
}