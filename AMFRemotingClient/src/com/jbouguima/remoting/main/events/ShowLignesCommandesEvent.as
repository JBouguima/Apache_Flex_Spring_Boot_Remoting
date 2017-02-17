package com.jbouguima.remoting.main.events
{
	import com.jbouguima.remoting.vo.gestionproduit.Commande;
	
	import flash.events.Event;
	
	/**
	 * 
	 * @author: jbouguima
	 *  12/01/2017
	 * 
	 * */
	public class ShowLignesCommandesEvent extends Event
	{
		public static var SHOW_LIGNES_COMMANDE_EVENT:String = "showLignesCommandeEvent";
		public var commandeVo:Commande;
		public function ShowLignesCommandesEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	}
}