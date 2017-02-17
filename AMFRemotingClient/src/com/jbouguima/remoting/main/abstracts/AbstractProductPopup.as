package com.jbouguima.remoting.main.abstracts
{
	import com.adobe.cairngorm.control.CairngormEventDispatcher;
	import com.jbouguima.remoting.gestionclient.event.LoadClientCommandListEvent;
	import com.jbouguima.remoting.gestionclient.event.LoadProduitsEvent;
	import com.jbouguima.remoting.gestionclient.event.SaveCommandeEvent;
	import com.jbouguima.remoting.gestionclient.helpers.ClientCommandeListManager;
	import com.jbouguima.remoting.gestionclient.helpers.ProduitListManager;
	import com.jbouguima.remoting.gestionclient.helpers.SaveCommandeManager;
	import com.jbouguima.remoting.gestionclient.model.ClientModelLocator;
	import com.jbouguima.remoting.main.components.BootTextInput;
	import com.jbouguima.remoting.main.components.CircleButton;
	import com.jbouguima.remoting.main.events.NewLigneCommandeEvent;
	import com.jbouguima.remoting.main.events.ShowLignesCommandesEvent;
	import com.jbouguima.remoting.main.events.SwichViewsEvent;
	import com.jbouguima.remoting.main.helpers.ApplicationConst;
	import com.jbouguima.remoting.vo.gestionclient.Client;
	import com.jbouguima.remoting.vo.gestionclient.LigneCommandeVO;
	import com.jbouguima.remoting.vo.gestionproduit.Commande;
	import com.jbouguima.remoting.vo.gestionproduit.LigneCommande;
	import com.jbouguima.remoting.vo.gestionproduit.PaiementCheque;
	import com.jbouguima.remoting.vo.gestionproduit.PaiementEspece;
	import com.jbouguima.remoting.vo.gestionproduit.Produit;
	
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.events.MouseEvent;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	import mx.core.FlexGlobals;
	import mx.events.FlexEvent;
	
	import spark.components.Group;
	import spark.components.Image;
	import spark.components.Label;
	import spark.components.List;
	import spark.components.RadioButton;
	import spark.effects.Move;
	import spark.events.IndexChangeEvent;
	
	/**
	 * 
	 * @author: jbouguima
	 *  12/01/2017
	 * 
	 * */
	[Bindable]
	public class AbstractProductPopup extends Group implements ProduitListManager,
		ClientCommandeListManager, SaveCommandeManager
	{
		private var dispatcher:CairngormEventDispatcher = CairngormEventDispatcher.getInstance();
		private var clientModelLocator:ClientModelLocator = ClientModelLocator.getInstance();
		
		public var newCommandePanel:Group;
		public var listeCommandePanel:Group;
		
		public var listeProduits:ArrayCollection;
		public var produitLst:List;
		public var commandesLst:List;
		public var typeOperation:String;
		public var activeView:String;
		//public var filterProductBox:FilterBox;
		public var backIcone:Image;
		public var btnIcone:Image;
		public var closeMove:Move;
		public var openMove:Move;
		private var isOpen:Boolean;
		private var tmpList:ArrayCollection;
		
		public var selectedProduitVO:Produit;
		public var selectedCommandeVO:Commande;
		public var selectedProductName:String;
		public var prixLigneCommande:Number;
		public var qteProduitInput:BootTextInput;
		public var listeCommandes:ArrayCollection;
		public var addCommandBtn:CircleButton;
		public var clientVO:Client;
		
		private var newCommandeVO:Commande;
		private var ligneCounter:Number;
		public  var montantCommande:Number;
		public var montanttotalLbl:Label;
		
		public var payementEspece:RadioButton;
		public var payementCheque:RadioButton;
		
		public function AbstractProductPopup()
		{
			super();
			listeProduits = new ArrayCollection();
			listeCommandes = new ArrayCollection();
			tmpList = new  ArrayCollection();
			addEventListener(FlexEvent.CREATION_COMPLETE, init);
		}
		
		public function init(evt:FlexEvent):void
		{
			clientModelLocator.registerListProduitsManagers(this);
			clientModelLocator.registerClientCommandeListManager(this);
			clientModelLocator.registerSaveCommandeManager(this);
			loadProductList();
			activeView = ApplicationConst.LISTE_COMMANDE_VIEW;
			produitLst.dataProvider = listeProduits;
			commandesLst.dataProvider = listeCommandes;
			//typeOperation = "Commandes de :";
			backIcone.addEventListener(MouseEvent.CLICK, swichViews);
			btnIcone.addEventListener(MouseEvent.CLICK, closePopup);
			closeMove.xFrom = FlexGlobals.topLevelApplication.width-350;
			closeMove.xTo = FlexGlobals.topLevelApplication.width;
			openMove.xFrom = FlexGlobals.topLevelApplication.width;
			openMove.xTo = FlexGlobals.topLevelApplication.width-350;
			//filterProductBox.addEventListener(SearchEvent.SEARCH_EVENT, startSearch);
			produitLst.addEventListener(IndexChangeEvent.CHANGE, setProduitDetails);
			commandesLst.addEventListener(IndexChangeEvent.CHANGE, setCommandeDetails);
			qteProduitInput.addEventListener(KeyboardEvent.KEY_UP, calculateTotalCommande);
			systemManager.addEventListener(SwichViewsEvent.SHOW_ORDERS_VIEW_EVENT, showOrdersView);
			systemManager.addEventListener(SwichViewsEvent.HIDE_ORDERS_VIEW_EVENT, hideOrdersView);
			addCommandBtn.addEventListener(MouseEvent.CLICK, showNewOrderPanel);
			qteProduitInput.enabled = false;
			montantCommande = 0;
		}
		
		private function loadProductList():void
		{
			dispatcher.dispatchEvent(new LoadProduitsEvent());
		}
		
		public function setProduitDetails(evt:IndexChangeEvent):void
		{
			selectedProduitVO = produitLst.selectedItem as Produit;
			selectedProductName = selectedProduitVO.nomProduit;
			qteProduitInput.enabled = true;
		}
		
		public function setCommandeDetails(evt:IndexChangeEvent):void
		{
			var event:ShowLignesCommandesEvent = 
				new ShowLignesCommandesEvent(ShowLignesCommandesEvent.SHOW_LIGNES_COMMANDE_EVENT, true, false);
			
			selectedCommandeVO = commandesLst.selectedItem as Commande;
			event.commandeVo = selectedCommandeVO;
			dispatchEvent(event);
		}
		
		private function calculateTotalCommande(evt:KeyboardEvent):void
		{
			if(selectedProduitVO && selectedProduitVO.prixVenteUnitaire
			&& qteProduitInput.text.length>0){
				var nombreArticles:Number = Number(qteProduitInput.text);
				if(nombreArticles)
					prixLigneCommande = selectedProduitVO.prixVenteUnitaire * nombreArticles;
			}else{
				prixLigneCommande = 0;
			}
		}
		
		
		public function addLigneCommandeHandler(event:MouseEvent):void
		{
			if(!newCommandeVO){
				newCommandeVO = new Commande();
				var lignesCommande:ArrayCollection = new ArrayCollection();
				newCommandeVO.lignesCommande = lignesCommande;
				ligneCounter = 0;
			}
			var ligneCommande:LigneCommandeVO = new LigneCommandeVO();
			ligneCommande.idLigne = ++ligneCounter;
			ligneCommande.produit = selectedProduitVO;
			ligneCommande.qteSaisie = Number(qteProduitInput.text);
			
			montantCommande += selectedProduitVO.prixVenteUnitaire * Number(qteProduitInput.text);
			qteProduitInput.text = "";
			prixLigneCommande = 0;
			newCommandeVO.lignesCommande.addItem(ligneCommande);
			
			var evt:NewLigneCommandeEvent = new NewLigneCommandeEvent(NewLigneCommandeEvent.NEW_LIGNE_COMMANDE_EVENT, true, false);
			evt.ligneCommande = ligneCommande;
			
			dispatchEvent(evt);
		}
		
		public function cancelLigneCommandHandler(event:MouseEvent):void
		{
			//var lignesCommande:ArrayCollection = new ArrayCollection();
			//lignesCommande.addAll(newCommandeVO.lignesCommande);
			
			if(newCommandeVO.lignesCommande){
				
				for(var i:Number = 0; i<newCommandeVO.lignesCommande.length; i++){
					var ligne:LigneCommandeVO = newCommandeVO.lignesCommande.getItemAt(i) as LigneCommandeVO;
					if(ligne.idLigne == ligneCounter)
					{
						newCommandeVO.lignesCommande.removeItemAt(i);
						montantCommande = montantCommande - ligne.prixVenteProduit * ligne.qteSaisie;
						//montanttotalLbl.text = "Montant Totale: "+montantCommande.toString();
						break;
					}
				}
				
				var evt:NewLigneCommandeEvent = new NewLigneCommandeEvent(NewLigneCommandeEvent.DELETE_LIGNE_COMMANDE_EVENT, true, false);
				evt.idLigneCommande = ligneCounter;
				
				dispatchEvent(evt);
			}

		}
		
		public function loadListCommande(client:Client):void
		{
			var cevent:LoadClientCommandListEvent = new LoadClientCommandListEvent(client);
			dispatcher.dispatchEvent(cevent);
		}
		
		public function showOrdersView(evt:SwichViewsEvent):void
		{
			clientVO = evt.clientVo ? evt.clientVo : null;
			showOrdersListPanel()
			loadListCommande(clientVO);
			typeOperation = "Commandes de "+clientVO.nom+" "+clientVO.prenom;
			openMe();
			
		}
		public function hideOrdersView(evt:SwichViewsEvent):void
		{
			closeMe();
		}		
		
		public function cancelCommandeHandler(event:MouseEvent):void
		{
			newCommandeVO = null;
		}
		
		public function saveCommandeHandler(event:MouseEvent):void
		{
			if(newCommandeVO){
				newCommandeVO.client = clientVO;		
				newCommandeVO.dateCommande = new Date();
				newCommandeVO.montantTotal = montantCommande;
				updateLigneCommandeList();
				setTypePaiementSelection();
				var cevent:SaveCommandeEvent = new SaveCommandeEvent(newCommandeVO);
				dispatcher.dispatchEvent(cevent);
			}else {
				
				Alert.show("Commande Vide !");
			}
			
		}
		
		private function updateLigneCommandeList():void
		{
			var listeLignesCommandes:ArrayCollection = new ArrayCollection();
			for each(var ligne:LigneCommandeVO in newCommandeVO.lignesCommande){
				var ligneCommande:LigneCommande = new LigneCommande();
				var produit:Produit = new Produit();
				
				ligneCommande.produit = ligne.produit;
				ligneCommande.quantite = ligne.qteSaisie;
				
				listeLignesCommandes.addItem(ligneCommande);
			}
			newCommandeVO.lignesCommande = listeLignesCommandes;
		}
		
		private function setTypePaiementSelection():void
		{
			
			if(payementEspece.selected){
				var paiementEspece:PaiementEspece = new PaiementEspece();
				paiementEspece.montantPaiement = montantCommande;
				paiementEspece.dateReception = new Date();
				newCommandeVO.typePaiement = paiementEspece;
			}else{
				var paiementCheque:PaiementCheque = new PaiementCheque();
				paiementCheque.montantPaiement = montantCommande;
				paiementCheque.numeroCheque = "00125563354";
				paiementCheque.dateReception = new Date();
				paiementCheque.dateVersementCheque = new Date();
				newCommandeVO.typePaiement = paiementCheque;
			}
		}
		
		
		/******************************************************************************
		 * 						  methodes callback
		 * *****************************************************************************/
		
		public function updateProduitsList(value:ArrayCollection):void
		{
			if(listeProduits) listeProduits.removeAll();
			else listeProduits = new ArrayCollection();
			listeProduits.addAll(value);
		}
		
		
		public function updateCommandesList(value:ArrayCollection):void
		{
			if(listeCommandes) listeCommandes.removeAll();
			else listeCommandes = new ArrayCollection();
			
			listeCommandes.addAll(value);
			showOrdersListPanel();
			//resultatMesureDG.dataProvider = listeCommandes;
		}
		
		public function resultSaveCommandeOp(value:Commande):void
		{
			Alert.show("save succeeded !");
			montantCommande = 0;
			newCommandeVO = null;
			loadListCommande(clientVO);
		}
		
		//////////// commande window
		
		private function showOrdersListPanel():void
		{
			newCommandePanel.includeInLayout = false;
			newCommandePanel.visible = false;
			listeCommandePanel.includeInLayout = true;
			listeCommandePanel.visible = true;
			activeView = ApplicationConst.LISTE_COMMANDE_VIEW;
			typeOperation = "Commandes de "+clientVO.nom+" "+clientVO.prenom;
		}
		
		private function showNewOrderPanel(evt:MouseEvent):void
		{
			listeCommandePanel.includeInLayout = false;
			listeCommandePanel.visible = false;
			newCommandePanel.includeInLayout = true;
			newCommandePanel.visible = true;
			activeView = ApplicationConst.NEW_COMMANDE_VIEW;
			typeOperation = "Nouvelle Commande";
		}
		
		private function swichViews(evt:MouseEvent):void
		{
			if(activeView == ApplicationConst.NEW_COMMANDE_VIEW)
				showOrdersListPanel()
			else
				showNewOrderPanel(evt);
		}
		
		private function closePopup(evt:MouseEvent):void
		{
				closeMe();
		}
		
		public function closeMe():void
		{
			if(isOpen){
				closeMove.play();
				isOpen = false;
			}
		}
		
		public function openMe():void
		{
			if(!isOpen){
				openMove.play();
				isOpen = true;	
			}
		}
		
		
	}
}