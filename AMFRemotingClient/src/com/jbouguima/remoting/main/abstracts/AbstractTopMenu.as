package com.jbouguima.remoting.main.abstracts
{
	import com.jbouguima.remoting.IconesResources;
	import com.jbouguima.remoting.main.events.NavigationEvent;
	import com.jbouguima.remoting.main.helpers.ApplicationConst;
	
	import flash.events.MouseEvent;
	
	import mx.events.FlexEvent;
	
	import spark.components.Group;
	import spark.components.Image;
	
	/**
	 * 
	 * @author: jbouguima
	 *  12/01/2017
	 * 
	 * */
	[Bindable]
	public class AbstractTopMenu extends Group
	{
		public var loginBtn:Image;
		public var menuBtn:Image;
		public var logoImg:Image;
		
		public var crumbValue:String="";
		
		public function AbstractTopMenu()
		{
			super();
			addEventListener(FlexEvent.CREATION_COMPLETE, init);
		}
		
		public function init(evt:FlexEvent):void
		{
			logoImg.addEventListener(MouseEvent.CLICK, goHomeHandler);
			menuBtn.addEventListener(MouseEvent.CLICK, openClientPopup);
		}
		
		
		public function goHomeHandler(evt:MouseEvent):void
		{
			var navEvent:NavigationEvent = new NavigationEvent(NavigationEvent.HOME_BTN_NAVIGATION_EVENT,true, false);
			navEvent.destination = ApplicationConst.HOME_VIEW;
			dispatchEvent(navEvent);
		}		
		
		private function openClientPopup(evt:MouseEvent):void
		{
			dispatchEvent(new NavigationEvent(NavigationEvent.OPEN_POPUP_EVENT, true, false));
		}
		
		public function overLoginHandler(event:MouseEvent):void
		{
			loginBtn.source = IconesResources.LOGIN_ICON_OVER;
		}
		public function outLoginHandler(event:MouseEvent):void
		{
			loginBtn.source = IconesResources.LOGIN_ICON_OUT;
		}
		public function overMenuHandler(event:MouseEvent):void
		{
			menuBtn.source = IconesResources.MENU_ICON_OVER;
		}
		public function outMenuHandler(event:MouseEvent):void
		{
			menuBtn.source = IconesResources.MENU_ICON_OUT;
		}
		
	}
}