package com.jbouguima.remoting.gestionclient.model
{
	import com.adobe.cairngorm.CairngormMessageCodes;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.adobe.cairngorm.model.ModelLocator;
	import com.jbouguima.remoting.gestionclient.helpers.ClientCommandeListManager;
	import com.jbouguima.remoting.gestionclient.helpers.ClientListManager;
	import com.jbouguima.remoting.gestionclient.helpers.ClientOperationsManager;
	import com.jbouguima.remoting.gestionclient.helpers.GovListManager;
	import com.jbouguima.remoting.gestionclient.helpers.ProduitListManager;
	import com.jbouguima.remoting.gestionclient.helpers.SaveCommandeManager;
	import com.jbouguima.remoting.gestionclient.helpers.TypeIdListManager;
	import com.jbouguima.remoting.vo.gestionclient.Client;
	import com.jbouguima.remoting.vo.gestionproduit.Commande;
	
	import mx.collections.ArrayCollection;
	import mx.rpc.events.FaultEvent;
	
	/**
	 * 
	 * @author: jbouguima
	 *  12/01/2017
	 * 
	 * */
	[Bindable]
	public class ClientModelLocator implements ModelLocator
	{
		
		private static var model:ClientModelLocator;
		private var clientListManagers:ArrayCollection;
		private var govListeManagers:ArrayCollection;
		private var typeIdListeManagers:ArrayCollection;
		private var clientOperationsManagers:ArrayCollection;
		private var listeProduitsManagers:ArrayCollection;
		private var listeClientCommandeListManagers:ArrayCollection;
		private var listeSaveCommandeManagers:ArrayCollection;
		
		public static function getInstance():ClientModelLocator
		{
			if(model==null){
				model =  new ClientModelLocator();
			}
			return model;
		}
		
		public function ClientModelLocator():void
		{
			if(model!=null){
				throw new CairngormEvent(CairngormMessageCodes.SINGLETON_EXCEPTION,
					"you should have one ClientModelLocator instance ");
			}
		}
		
		/***********************************************************************
		 *  					register managers
		 * *********************************************************************/
		
		public function registerGovListManager(manager:GovListManager):void
		{
			if(!govListeManagers)
			{
				govListeManagers = new ArrayCollection();
			}
				govListeManagers.addItem(manager);
		}
		
		public function registerClientListManager(manager:ClientListManager):void
		{
			if(!clientListManagers)
			{
				clientListManagers = new ArrayCollection();
			}
				clientListManagers.addItem(manager);
		}		
		
		public function registerTypesIDListManager(manager:TypeIdListManager):void
		{
			if(!typeIdListeManagers)
			{
				typeIdListeManagers = new ArrayCollection();
			}
				typeIdListeManagers.addItem(manager);
		}			
		
		public function registerOpClientManager(manager:ClientOperationsManager):void
		{
			if(!clientOperationsManagers)
			{
				clientOperationsManagers = new ArrayCollection();
			}
			clientOperationsManagers.addItem(manager);
		}			
		
		public function registerListProduitsManagers(manager:ProduitListManager):void
		{
			if(!listeProduitsManagers)
			{
				listeProduitsManagers = new ArrayCollection();
			}
			listeProduitsManagers.addItem(manager);
		}
		
		public function registerClientCommandeListManager(manager:ClientCommandeListManager):void
		{
			if(!listeClientCommandeListManagers)
			{
				listeClientCommandeListManagers = new ArrayCollection();
			}
			listeClientCommandeListManagers.addItem(manager);
		}
		
		public function registerSaveCommandeManager(manager:SaveCommandeManager):void
		{
			if(!listeSaveCommandeManagers)
			{
				listeSaveCommandeManagers = new ArrayCollection();
			}
			listeSaveCommandeManagers.addItem(manager);
		}
		
		/*************************************************************************
		 * 						callbacks
		 * ***********************************************************************/
		
		public function loadClientsResult(result:Object):void
		{
			var clientListe:ArrayCollection = result as ArrayCollection;
			// notify concerned ui
			for each(var clientListManager:ClientListManager in clientListManagers)
			{
				clientListManager.updateClientsList(clientListe);
			}
			
		}
		
		public function addClientResult(result:Object):void
		{
			var addClientResult:Client = result as Client;
			//notify concerned ui
			for each(var clientOperationsManager:ClientOperationsManager in clientOperationsManagers)
			{
				clientOperationsManager.addClientResult(addClientResult);
			}
		}
		
		public function reportServiceError(error:Object):void
		{
			if(error is FaultEvent){
				// do some notification
			}
		}
		
		public function loadGovListResult(result:Object):void
		{
			var govListe:ArrayCollection = result as ArrayCollection;
			for each(var govListeManager:GovListManager in govListeManagers)
			{
				govListeManager.updateGovList(govListe);
			}
		}
		
		public function loadTypeIdListResult(result:Object):void
		{
			var typeIdListe:ArrayCollection = result as ArrayCollection;
			for each(var typeIdListManager:TypeIdListManager in typeIdListeManagers)
			{
				typeIdListManager.updateTypeIdList(typeIdListe);
			}
		}
		
		public function loadProduitsResult(result:Object):void
		{
			var produitsListe:ArrayCollection = result as ArrayCollection;
			for each(var produitListManager:ProduitListManager in listeProduitsManagers)
			{
				produitListManager.updateProduitsList(produitsListe);
			}
		}
		
		public function loadCommandeByClientResult(result:Object):void
		{
			var commandesListe:ArrayCollection = result as ArrayCollection;
			for each(var clientCommandeListManager:ClientCommandeListManager in listeClientCommandeListManagers)
			{
				clientCommandeListManager.updateCommandesList(commandesListe);
			}
		}
		
		
		public function saveCommandeResult(result:Object):void
		{
			var commande:Commande = result as Commande;
			for each(var saveNewManager:SaveCommandeManager in listeSaveCommandeManagers)
			{
				saveNewManager.resultSaveCommandeOp(commande);
			}
		}
		
	}
}