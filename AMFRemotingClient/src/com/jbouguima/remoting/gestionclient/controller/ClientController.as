package com.jbouguima.remoting.gestionclient.controller
{
	import com.adobe.cairngorm.control.FrontController;
	import com.jbouguima.remoting.gestionclient.command.AddClientCommand;
	import com.jbouguima.remoting.gestionclient.command.LoadClientCommandListCommand;
	import com.jbouguima.remoting.gestionclient.command.LoadClientsCommand;
	import com.jbouguima.remoting.gestionclient.command.LoadGovListCommand;
	import com.jbouguima.remoting.gestionclient.command.LoadProduitCommand;
	import com.jbouguima.remoting.gestionclient.command.LoadTypeIdListCommand;
	import com.jbouguima.remoting.gestionclient.command.SaveCommandeCommand;
	import com.jbouguima.remoting.gestionclient.event.AddClientEvent;
	import com.jbouguima.remoting.gestionclient.event.LoadClientCommandListEvent;
	import com.jbouguima.remoting.gestionclient.event.LoadClientsEvent;
	import com.jbouguima.remoting.gestionclient.event.LoadGovListEvent;
	import com.jbouguima.remoting.gestionclient.event.LoadProduitsEvent;
	import com.jbouguima.remoting.gestionclient.event.LoadTypeIdListEvent;
	import com.jbouguima.remoting.gestionclient.event.SaveCommandeEvent;
	
	/**
	 * 
	 * @author: jbouguima
	 *  12/01/2017
	 * 
	 * */
	public class ClientController extends FrontController
	{
		public function ClientController()
		{
			super();
			addCommand(AddClientEvent.ADD_CLIENT_EVENT,AddClientCommand);
			addCommand(LoadClientsEvent.LOAD_CLIENTS_EVENT,LoadClientsCommand);
			addCommand(LoadGovListEvent.LOAD_GOVLIST_EVENT,LoadGovListCommand);
			addCommand(LoadTypeIdListEvent.LOAD_TYPES_ID_LIST_EVENT,LoadTypeIdListCommand);
			addCommand(LoadProduitsEvent.LOAD_PRODUITS_EVENT,LoadProduitCommand);
			addCommand(LoadClientCommandListEvent.LOAD_CLIENT_COMMANDS_EVENT,LoadClientCommandListCommand);
			addCommand(SaveCommandeEvent.SAVE_COMMANDE_EVENT,SaveCommandeCommand);
		}
	}
}