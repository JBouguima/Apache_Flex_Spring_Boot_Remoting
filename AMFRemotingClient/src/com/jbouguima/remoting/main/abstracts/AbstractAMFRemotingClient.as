package com.jbouguima.remoting.main.abstracts
{
	import com.jbouguima.remoting.main.components.HomeButton;
	import com.jbouguima.remoting.main.components.ProductPopup;
	import com.jbouguima.remoting.main.components.TopMenu;
	import com.jbouguima.remoting.main.events.NavigationEvent;
	import com.jbouguima.remoting.main.helpers.ApplicationConst;
	import com.jbouguima.remoting.main.views.HomeView;
	
	import mx.containers.ViewStack;
	import mx.core.FlexGlobals;
	import mx.events.FlexEvent;
	import mx.managers.PopUpManager;
	
	import spark.components.Application;
	
	/**
	 * 
	 * @author: jbouguima
	 *  12/01/2017
	 * 
	 * */
	
	[Bindable]
	public class AbstractAMFRemotingClient extends Application
	{
		
		public var viewStack:ViewStack;
		public var homeView:HomeView;
		public var topMenu:TopMenu;
		private var productPopup:ProductPopup;
		
		public function AbstractAMFRemotingClient()
		{
			super();
			addEventListener(FlexEvent.CREATION_COMPLETE, init);
		}
		
		public function init(evt:FlexEvent):void
		{
			if(!productPopup) productPopup = new ProductPopup();
			productPopup.y = 0;
			productPopup.height = FlexGlobals.topLevelApplication.height;
			productPopup.x = FlexGlobals.topLevelApplication.width;
			systemManager.addEventListener(NavigationEvent.HOME_BTN_NAVIGATION_EVENT, navigationHandler);
			topMenu.addEventListener(NavigationEvent.OPEN_POPUP_EVENT, openClientPopup);
		}
		
		private function navigationHandler(evt:NavigationEvent):void
		{
			switch(evt.destination)
			{
				case ApplicationConst.HOME_VIEW:
				{
					viewStack.selectedIndex = 0;
					topMenu.crumbValue = "";
					homeView.intialiser();
					hideProductPopup();
					break;
				}
				case ApplicationConst.CLIENT_VIEW:
				{
					viewStack.selectedIndex = 1;
					topMenu.crumbValue = " Clients";
					showProductPopup();
					break;
				}
				case ApplicationConst.PRODUCT_VIEW:
				{
					viewStack.selectedIndex = 2;
					topMenu.crumbValue = " Produits";
					hideProductPopup();
					break;
				}
				case ApplicationConst.COMMAND_VIEW:
				{
					viewStack.selectedIndex = 3;
					topMenu.crumbValue = " Commandes";
					hideProductPopup();
					break;
				}
				case ApplicationConst.FACTURE_VIEW:
				{
					viewStack.selectedIndex = 4;
					topMenu.crumbValue = " Factures";
					hideProductPopup();
					break;
				}
				default:
				{
					//viewStack.selectedIndex = 0;
					break;
				}
			}
		}
		
		private function openClientPopup(evt:NavigationEvent):void
		{
			productPopup.openMe();
		}
		
		private function showProductPopup():void
		{
			PopUpManager.addPopUp(productPopup, this, false);
		}
		
		private function hideProductPopup():void
		{
			PopUpManager.removePopUp(productPopup);
		}
		
		[Embed(source="assets/fonts/segoeui.swf",      symbol="segoeui")]
		public var segoeui:Class;
		[Embed(source="assets/fonts/segoeuil.swf",      symbol="segoeuil")]
		public var segoeuil:Class;
		[Embed(source="assets/fonts/segoeuib.swf",      symbol="segoeuib")]
		public var segoeuib:Class;
		[Embed(source="assets/fonts/segoeuii.swf",      symbol="segoeuii")]
		public var segoeuii:Class;
		[Embed(source="assets/fonts/segoeuisb.swf",      symbol="segoeuisb")]
		public var segoeuisb:Class; 
	}
}