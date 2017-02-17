package com.jbouguima.remoting.gestionclient.abstracts
{
	import com.adobe.cairngorm.control.CairngormEventDispatcher;
	import com.jbouguima.remoting.gestionclient.helpers.SaveCommandeManager;
	import com.jbouguima.remoting.gestionclient.model.ClientModelLocator;
	import com.jbouguima.remoting.main.events.NewLigneCommandeEvent;
	import com.jbouguima.remoting.main.events.ShowLignesCommandesEvent;
	import com.jbouguima.remoting.main.events.SwichViewsEvent;
	import com.jbouguima.remoting.vo.gestionclient.LigneCommandeVO;
	import com.jbouguima.remoting.vo.gestionproduit.Commande;
	import com.jbouguima.remoting.vo.gestionproduit.LigneCommande;
	
	import mx.collections.ArrayCollection;
	import mx.events.FlexEvent;
	
	import spark.components.DataGrid;
	import spark.components.Group;
	
	
	/**
	 * 
	 * @author: jbouguima
	 *  12/01/2017
	 * 
	 * */
	[Bindable]
	public class AbstractListeOperationsClient extends Group implements SaveCommandeManager
	{
		private var clientModelLocator:ClientModelLocator = ClientModelLocator.getInstance();
		private var dispatcher:CairngormEventDispatcher = CairngormEventDispatcher.getInstance();
		
		public var resultatMesureDG:DataGrid;
		public var listeLignesCommandes:ArrayCollection;
		public var nouvelleCommande:Boolean;
		
		public function AbstractListeOperationsClient()
		{
			super();
			listeLignesCommandes = new ArrayCollection();
			addEventListener(FlexEvent.CREATION_COMPLETE, init);
		}
		
		public function init(evt:FlexEvent):void
		{
			nouvelleCommande = true;
			clientModelLocator.registerSaveCommandeManager(this);
			systemManager.addEventListener(ShowLignesCommandesEvent.SHOW_LIGNES_COMMANDE_EVENT, 
			showLignesHandler);
			systemManager.addEventListener(SwichViewsEvent.SHOW_ORDERS_VIEW_EVENT, flushDatagrid);
			systemManager.addEventListener(NewLigneCommandeEvent.NEW_LIGNE_COMMANDE_EVENT, addNewLigneHandler);
			systemManager.addEventListener(NewLigneCommandeEvent.DELETE_LIGNE_COMMANDE_EVENT, deleteLigneHandler);
		}
		
		private function showLignesHandler(evt:ShowLignesCommandesEvent):void
		{
			var commandeVO:Commande = evt.commandeVo;
			
			if(listeLignesCommandes) listeLignesCommandes.removeAll();
			else listeLignesCommandes = new ArrayCollection();
			
			if(commandeVO && commandeVO.lignesCommande)
			{
				for each(var ligne:LigneCommande in commandeVO.lignesCommande)
				{
					listeLignesCommandes.addItem(ligne);
				}
			}
		}
		
		public function addNewLigneHandler(evt:NewLigneCommandeEvent):void
		{
			var ligne:LigneCommandeVO = evt.ligneCommande;
			
			if(nouvelleCommande){
				if(listeLignesCommandes) listeLignesCommandes.removeAll();
				else listeLignesCommandes = new ArrayCollection();
				nouvelleCommande = false;
			}
			
			listeLignesCommandes.addItem(ligne);
			listeLignesCommandes.refresh();
		}
		
		public function deleteLigneHandler(evt:NewLigneCommandeEvent):void
		{
			var idligne:Number = evt.idLigneCommande;
			if(listeLignesCommandes) 
			{
				for (var i:Number=0; i< listeLignesCommandes.length; i++){
					
					var ligne:LigneCommandeVO = listeLignesCommandes.getItemAt(i) as LigneCommandeVO;
					
					if(ligne.idLigne == idligne){
						
						listeLignesCommandes.removeItemAt(i);
						break;
					}
				}
				listeLignesCommandes.refresh();
			}
		}
		
		private function flushDatagrid(evt:SwichViewsEvent):void
		{
			if(listeLignesCommandes) listeLignesCommandes.removeAll();
			else listeLignesCommandes = new ArrayCollection();
		}
		
		
		/******************************************************************************
		 * 						  Method managed
		 * *****************************************************************************/
		
		public function resultSaveCommandeOp(value:Commande):void
		{
			if(listeLignesCommandes) listeLignesCommandes.removeAll();
			listeLignesCommandes.refresh();
		}
		
		
	}
}