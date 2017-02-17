package com.jbouguima.remoting.main.abstracts
{
	//import com.jbouguima.remoting.vo.gestionproduit.Produit;
	
	import com.jbouguima.remoting.vo.gestionproduit.Commande;
	
	import flash.events.MouseEvent;
	
	import mx.events.FlexEvent;
	import mx.formatters.DateFormatter;
	
	import spark.components.supportClasses.ItemRenderer;
	import spark.effects.Fade;
	import spark.effects.Resize;
	
	/**
	 * 
	 * @author: jbouguima
	 *  12/01/2017
	 * 
	 * */
	[Bindable]
	public class AbstractCommandeRenderer extends ItemRenderer
	{
		public var fadeIn:Fade;
		public var fadeOut:Fade;
		public var resizeOn:Resize;
		public var resizeOff:Resize;
		
		private var commandeVO:Commande;
		public var dateCommande:String;
		public var montantCommande:String;
		public var datePaiement:String;
		private var formatter:DateFormatter;
		
		public function AbstractCommandeRenderer()
		{
			super();
			formatter = new DateFormatter();
			formatter.formatString = "DD/MM/YYYY";
			addEventListener(FlexEvent.CREATION_COMPLETE, init);
		}
		
		public function init(evt:FlexEvent):void
		{
			//addEventListener(MouseEvent.CLICK, showDetails);
		}
		
		override public function set data(value:Object):void
		{
			super.data = value;
			
			if(value){
				commandeVO = value as Commande;
				dateCommande = commandeVO.dateCommande ? formatter.format(commandeVO.dateCommande):"---"
				montantCommande = commandeVO.montantTotal ? commandeVO.montantTotal.toString():"0000";
				datePaiement = commandeVO.typePaiement && commandeVO.typePaiement.dateReception ? 
					formatter.format(commandeVO.typePaiement.dateReception) : "---";
			}
		}
		
		
/*		public function showDetails(evt:MouseEvent):void
		{
			var showLignesCommandeEvent:ShowLignesCommandesEvent = 
				new ShowLignesCommandesEvent(ShowLignesCommandesEvent.SHOW_LIGNES_COMMANDE_EVENT, true, false);
			showLignesCommandeEvent.commandeVo = this.commandeVO;
			
			this.owner.dispatchEvent(showLignesCommandeEvent);
		}
		*/
		public function itemRollOvrHandlr(event:MouseEvent):void
		{
			fadeIn.play();
		}
		
		public function itemRollOutHandlr(event:MouseEvent):void
		{
			fadeOut.play();
		}
		
	}
}