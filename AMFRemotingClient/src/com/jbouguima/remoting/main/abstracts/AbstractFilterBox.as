package com.jbouguima.remoting.main.abstracts
{
	import com.jbouguima.remoting.main.components.FilterText;
	import com.jbouguima.remoting.main.events.SearchEvent;
	
	import flash.events.KeyboardEvent;
	import flash.events.TextEvent;
	
	import mx.controls.SWFLoader;
	import mx.events.FlexEvent;
	
	import spark.components.Group;
	import spark.components.Image;
	import spark.events.TextOperationEvent;
	
	/**
	 * 
	 * @author: jbouguima
	 *  12/01/2017
	 * 
	 * */
	[Bindable]
	public class AbstractFilterBox extends Group
	{
		public var filterInput:FilterText;
		//public var loader:SWFLoader;
		public var searchBtn:Image;
		
		public function AbstractFilterBox()
		{
			super();
			addEventListener(FlexEvent.CREATION_COMPLETE, init);
		}
		
		public function init(evt:FlexEvent):void
		{
			filterInput.addEventListener(TextOperationEvent.CHANGE, startSearchOp);
			//filterInput.addEventListener(KeyboardEvent.KEY_UP, searchingStatus);
			//filterInput.addEventListener(KeyboardEvent., stopSearchingStatus);
		}
		
		public function startSearchOp(evt:TextOperationEvent):void
		{
			var searchEvt:SearchEvent = new  SearchEvent(SearchEvent.SEARCH_EVENT, true, false);
			searchEvt.searchString = filterInput.text;
			//searchingStatus();
			dispatchEvent(searchEvt);
		}
		
/*		public function searchingStatus():void
		{
			loader.includeInLayout = true;
			loader.visible = true;
			searchBtn.includeInLayout = false;
			searchBtn.visible = false;
		}
		
		public function stopSearchingStatus():void
		{
			loader.includeInLayout = false;
			loader.visible = false;
			searchBtn.includeInLayout = true;
			searchBtn.visible = true;
		}
		*/
	}
}