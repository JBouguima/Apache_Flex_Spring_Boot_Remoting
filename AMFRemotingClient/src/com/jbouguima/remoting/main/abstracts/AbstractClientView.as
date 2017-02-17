package com.jbouguima.remoting.main.abstracts
{
	import com.adobe.cairngorm.control.CairngormEventDispatcher;
	import com.jbouguima.remoting.gestionclient.event.LoadClientsEvent;
	import com.jbouguima.remoting.gestionclient.helpers.ClientListManager;
	import com.jbouguima.remoting.gestionclient.model.ClientModelLocator;
	import com.jbouguima.remoting.gestionclient.views.ListeOperationsClient;
	import com.jbouguima.remoting.gestionclient.views.ManageClientBox;
	import com.jbouguima.remoting.main.components.CircleButton;
	import com.jbouguima.remoting.main.components.FilterBox;
	import com.jbouguima.remoting.main.events.SearchEvent;
	import com.jbouguima.remoting.main.events.SwichViewsEvent;
	import com.jbouguima.remoting.main.helpers.ApplicationConst;
	import com.jbouguima.remoting.main.testdata.ClientData;
	import com.jbouguima.remoting.vo.gestionclient.Client;
	
	import flash.events.MouseEvent;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	import mx.events.FlexEvent;
	
	import org.hamcrest.core.ShortcutCombinationMatcher;
	
	import spark.components.Group;
	import spark.components.List;
	import spark.effects.Fade;
	
	/**
	 * 
	 * @author: jbouguima
	 *  12/01/2017
	 * 
	 * */
	[Bindable]
	public class AbstractClientView extends Group implements ClientListManager
	{
		private var dispatcher:CairngormEventDispatcher = CairngormEventDispatcher.getInstance();
		private var clientModelLocator:ClientModelLocator = ClientModelLocator.getInstance();
		
		public var clientLst:List;
		public var filterBox:FilterBox;
		public var listeCommandes:ArrayCollection;
		public var addClientBtn:CircleButton;
		public var listeOperationsClientBox:ListeOperationsClient;
		public var manageClientBox:ManageClientBox;
		public var fadeIn:Fade;
		public var fadeOut:Fade;
		
		private var clientList:ArrayCollection;
		private var tmpList:ArrayCollection;
		
		
		public function AbstractClientView()
		{
			super();
			clientList = new  ArrayCollection();
			tmpList = new  ArrayCollection();
			addEventListener(FlexEvent.CREATION_COMPLETE, init);
		}

		public function init(evt:FlexEvent):void
		{
			//clientList = ClientData.buildClientList();
			clientLst.dataProvider = clientList;
			clientLst.addEventListener(SwichViewsEvent.SHOW_ORDERS_VIEW_EVENT, showOrdersView);
			//load Client List
			loadClientList();
			clientModelLocator.registerClientListManager(this);
			filterBox.addEventListener(SearchEvent.SEARCH_EVENT, startSearch);
			addClientBtn.addEventListener(MouseEvent.CLICK, swichToAddInterface);
			
		}
		
		public function loadClientList():void
		{
			dispatcher.dispatchEvent(new LoadClientsEvent());
		}
		
		public function startSearch(evt:SearchEvent):void
		{
			var searchString:String = evt.searchString;
			tmpList.removeAll();
			if(searchString.length > 0)
			{
				for each (var clientVo:Client in clientList)
				{
					if((clientVo.nom && clientVo.nom.toLowerCase().search(searchString.toLowerCase())>=0) || 
						(clientVo.prenom && clientVo.prenom.toLowerCase().search(searchString.toLowerCase())>=0) ||
						(clientVo.codeClient && clientVo.codeClient.toLowerCase().search(searchString.toLowerCase())>=0) ||
						(clientVo.adresse && clientVo.adresse.gouvernorat && clientVo.adresse.gouvernorat.nomGouvernorat 
						&& clientVo.adresse.gouvernorat.nomGouvernorat.toLowerCase().search(searchString.toLowerCase())>=0))
					{
						tmpList.addItem(clientVo);
					}
				}
				clientLst.dataProvider = tmpList;
				//filterBox.stopSearchingStatus();
			}else 
			{
				clientLst.dataProvider = clientList;
				//filterBox.stopSearchingStatus();
			}
		}
		
		
		public function swichToAddInterface(evt:MouseEvent):void
		{
			manageClientBox.operationType = ApplicationConst.ADD_NEW_CLIENT;
			
			manageClientBox.includeInLayout = true;
			manageClientBox.visible = true;
			listeOperationsClientBox.includeInLayout = false;
			listeOperationsClientBox.visible = false;
			dispatchEvent(new SwichViewsEvent(SwichViewsEvent.HIDE_ORDERS_VIEW_EVENT, true, false));
			fadeIn.play([manageClientBox], false);
			fadeOut.play([listeOperationsClientBox], false);
		}
		
		public function showOrdersView(evt:SwichViewsEvent):void
		{
			var clientVo:Client = evt.clientVo;
			
			manageClientBox.includeInLayout = false;
			manageClientBox.visible = false;
			listeOperationsClientBox.includeInLayout = true;
			listeOperationsClientBox.visible = true;
			
			fadeIn.play([listeOperationsClientBox], false);
			fadeOut.play([manageClientBox], false);
			//listeOperationsClientBox.managedClient = clientVo;
		}
		/******************************************************************************
		 * 						  Method managed
		 * *****************************************************************************/
		
		public function updateClientsList(value:ArrayCollection):void
		{
			if(clientList) clientList.removeAll();
			else clientList = new ArrayCollection();
			clientList.addAll(value);
		}
	}
}