package com.jbouguima.remoting.gestionclient.event
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.jbouguima.remoting.vo.gestionproduit.Commande;
	
	import flash.events.Event;
	
	/**
	 * 
	 * @author: jbouguima
	 *  12/01/2017
	 * 
	 * */
	public class SaveCommandeEvent extends CairngormEvent
	{
		public var commande:Commande;
		public static var  SAVE_COMMANDE_EVENT:String="saveCommandeEvent"
		
		public function SaveCommandeEvent(commande:Commande)
		{
			super(SaveCommandeEvent.SAVE_COMMANDE_EVENT);
			this.commande = commande;
		}
		
		public override function clone():Event{
			return new SaveCommandeEvent(commande);
		}
		
		
	}
}