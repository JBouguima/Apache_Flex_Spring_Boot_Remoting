package com.jbouguima.remoting.main.events
{
	import com.jbouguima.remoting.vo.gestionclient.LigneCommandeVO;
	
	import flash.events.Event;
	
	/**
	 * 
	 * @author: jbouguima
	 *  12/01/2017
	 * 
	 * */
	public class NewLigneCommandeEvent extends Event
	{
		
		public static var NEW_LIGNE_COMMANDE_EVENT:String = "newLigneCommandeEvent";
		public static var DELETE_LIGNE_COMMANDE_EVENT:String = "deleteLigneCommandeEvent";
		
		public var ligneCommande:LigneCommandeVO;
		public var idLigneCommande:Number;
		
		public function NewLigneCommandeEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	}
}