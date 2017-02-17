package com.jbouguima.remoting.gestionclient.abstracts
{
	import com.adobe.cairngorm.control.CairngormEventDispatcher;
	import com.jbouguima.nicedates.simplepicker.SimplePicker;
	import com.jbouguima.remoting.gestionclient.event.AddClientEvent;
	import com.jbouguima.remoting.gestionclient.event.LoadClientsEvent;
	import com.jbouguima.remoting.gestionclient.event.LoadGovListEvent;
	import com.jbouguima.remoting.gestionclient.event.LoadTypeIdListEvent;
	import com.jbouguima.remoting.gestionclient.helpers.ClientOperationsManager;
	import com.jbouguima.remoting.gestionclient.helpers.GovListManager;
	import com.jbouguima.remoting.gestionclient.helpers.TypeIdListManager;
	import com.jbouguima.remoting.gestionclient.model.ClientModelLocator;
	import com.jbouguima.remoting.main.components.BootTextInput;
	import com.jbouguima.remoting.main.components.ToggleButton;
	import com.jbouguima.remoting.main.helpers.ApplicationConst;
	import com.jbouguima.remoting.vo.gestionclient.Adresse;
	import com.jbouguima.remoting.vo.gestionclient.Client;
	import com.jbouguima.remoting.vo.gestionclient.Gouvernorat;
	import com.jbouguima.remoting.vo.gestionclient.IdentitePersonne;
	import com.jbouguima.remoting.vo.gestionclient.Profession;
	import com.jbouguima.remoting.vo.gestionclient.TypeIdentite;
	
	import flash.events.MouseEvent;
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	import mx.events.FlexEvent;
	
	import spark.components.CheckBox;
	import spark.components.ComboBox;
	import spark.components.Group;
	
	/**
	 * 
	 * @author: jbouguima
	 *  12/01/2017
	 * 
	 * */
	[Bindable]
	public class AbstractManageClientBox extends Group implements GovListManager, TypeIdListManager,
		ClientOperationsManager
	{
		private var clientModelLocator:ClientModelLocator = ClientModelLocator.getInstance();
		private var dispatcher:CairngormEventDispatcher = CairngormEventDispatcher.getInstance();
		
		private var _operationType:String;
		private var _managedClient:Client;
		public var typeAction:String;
		public var govList:ArrayCollection;
		public var identiteTypeList:ArrayCollection;
		
		public var govChooser:ComboBox;
		public var adresseInput:BootTextInput;
		public var nomInput:BootTextInput;
		public var prenomInput:BootTextInput;
		public var birthdateChooser:SimplePicker ;
		public var sexeChooser:ToggleButton;
		public var codeClientInput:BootTextInput;
		public var professionInput:BootTextInput;
		public var identiteInput:BootTextInput;
		public var identiteChooser:ComboBox;
		public var identiteDateChooser:SimplePicker ;
		public var idPrincipalCheckbx:CheckBox;
		
		public var notificationOp:Group;
		public var resultOpColor:uint;
		public var resultOpColorStroke:uint;
		public var actionResult:String;
		
		private var resultTimer:Timer;
		
		public function AbstractManageClientBox()
		{
			super();
			resultTimer = new Timer(3000);
			govList = new ArrayCollection();
			identiteTypeList = new ArrayCollection();
			addEventListener(FlexEvent.CREATION_COMPLETE, init);
		}
		
		public function init(evt:FlexEvent):void
		{
			clientModelLocator.registerGovListManager(this);
			clientModelLocator.registerTypesIDListManager(this);
			clientModelLocator.registerOpClientManager(this);
			loadGovList();
			loadTypeIdList();
			typeAction = "Nouveau Client";
		}
		
		public function set managedClient(value:Client):void
		{
			this._managedClient = value
		}
		
		public function get managedClient():Client
		{
			return _managedClient;
		}
		
		public function set operationType(value:String):void
		{
			this._operationType = value;
			switch(value)
			{
				case ApplicationConst.ADD_NEW_CLIENT:
				{
					typeAction = "Nouveau Client";
					break;
				}
				case ApplicationConst.UPDATE_CLIENT:
				{
					typeAction = "Modifier Client";
					break;
				}
				case ApplicationConst.DELETE_CLIENT:
				{
					typeAction = "Supprimer Client";
					break;
				}
				default:
				{
					break;
				}
			}
		}
		
		public function saveUserHandler(event:MouseEvent):void
		{
			var client:Client = new Client();
			
			var adresse:Adresse = new Adresse();
			adresse.gouvernorat = govChooser.selectedItem as Gouvernorat;
			adresse.nomRue = adresseInput.text;
			client.adresse = adresse;
			client.nom = nomInput.text;
			client.prenom = prenomInput.text;
			client.dateNaissance = birthdateChooser.chooserDate;
			var profession:Profession = new Profession();
			profession.libelleProfession = professionInput.text;
			client.profession = profession;
			client.codeClient = codeClientInput.text;
			client.sexe = sexeChooser.result==sexeChooser.RValue ? "MALE" : "FEMALE" ;
			var identites:ArrayCollection = new ArrayCollection();
			var idpersonne:IdentitePersonne = new IdentitePersonne();
			var typeId:TypeIdentite = identiteChooser.selectedItem as TypeIdentite;
			idpersonne.typeIdentite = typeId;
			idpersonne.dateDelivrance = identiteDateChooser.chooserDate;
			idpersonne.identitePrincipale = idPrincipalCheckbx.selected;
			idpersonne.numeroIdentite = identiteInput.text;
			identites.addItem(idpersonne);
			client.identites = identites;
			
			var addCEvent:AddClientEvent = new AddClientEvent(client);
			dispatcher.dispatchEvent(addCEvent);
		}
		
		public function cancelSaveHandler(event:MouseEvent):void
		{
			flush();
		}
		
		public function addClientResult(client:Client):void
		{
			if(client){
				actionResult = "Client Ajouté Avec Succès !";
				resultOpColor = ApplicationConst.SUCCESS_COLOR;
				resultOpColorStroke = ApplicationConst.SUCCESS_COLOR_BORDER;
				notificationOp.alpha = 1;
				resultTimer.start();
				resultTimer.addEventListener(TimerEvent.TIMER,endResultShow);
				flush();
				dispatcher.dispatchEvent(new LoadClientsEvent());
			}
		}
		
		private function endResultShow(evt:TimerEvent):void
		{
			notificationOp.alpha = 0;
		}
		
		public function get operationType():String
		{
			return _operationType;
		}
		
		private function loadGovList():void
		{
			dispatcher.dispatchEvent(new LoadGovListEvent());
		}
		
		private function loadTypeIdList():void
		{
			dispatcher.dispatchEvent(new LoadTypeIdListEvent());
		}
		
		public function flush():void
		{
			govChooser.selectedIndex = 0 ;              
			adresseInput.text = "";                                        
			nomInput.text = "";                                                
			prenomInput.text = "";                                          
			birthdateChooser.chooserDate = new Date();                       
			professionInput.text = "";                       
			codeClientInput.text = "";                                  
			//client.sexe = sexeChooser.result==sexeChooser.RValue ? "MALE" : "FEMALE" ;
			//sexeChooser.reset();
			identiteChooser.selectedIndex = 0 ;    
			identiteDateChooser.chooserDate = new Date();               
			idPrincipalCheckbx.selected = false;               
			identiteInput.text = "";                            
		}
		
		
		/******************************************************************************
		 * 						  Method managed
		 * *****************************************************************************/
		
		public function updateGovList(value:ArrayCollection):void
		{
			if(govList) govList.removeAll();
			else govList = new ArrayCollection();
			govList.addAll(value);
		}
		
		public function updateTypeIdList(value:ArrayCollection):void
		{
			if(identiteTypeList) identiteTypeList.removeAll();
			else identiteTypeList = new ArrayCollection();
			identiteTypeList.addAll(value);
		}
		
		
	}
}