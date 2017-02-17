package com.jbouguima.remoting.main.abstracts
{
	import com.jbouguima.remoting.vo.gestionproduit.Produit;
	
	import flash.events.MouseEvent;
	
	import mx.events.EffectEvent;
	import mx.events.FlexEvent;
	
	import spark.components.HGroup;
	import spark.components.VGroup;
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
	public class AbstractProduitRenderer extends ItemRenderer
	{
		public var fadeIn:Fade;
		public var fadeOut:Fade;
		public var resizeOn:Resize;
		public var resizeOff:Resize;
		
		public var productName:String;
		public var productCode:String;
		public var productReference:String;
		public var qteOnStock:Number;
		public var prixUnitaire:Number;
		
		private var produitVO:Produit;
		
		private var open:Boolean;
		public var produitDetailsBox:VGroup;
		
		public function AbstractProduitRenderer()
		{
			super();
			addEventListener(FlexEvent.CREATION_COMPLETE, init);
		}
		
		public function init(evt:FlexEvent):void
		{
			addEventListener(MouseEvent.DOUBLE_CLICK, showHideDetails);
			resizeOn.addEventListener(EffectEvent.EFFECT_END, showDetailsHandler);
		}
		
		override public function set data(value:Object):void
		{
			super.data = value;
			
			if(value){
				produitVO = value as Produit;
				productName = produitVO.nomProduit;
				productCode = produitVO.codeProduit;
				productReference = produitVO.referenceProduit;
				qteOnStock = produitVO.quantiteStock;
				prixUnitaire = produitVO.prixVenteUnitaire;
				
			}
		}

		
		public function showHideDetails(evt:MouseEvent):void
		{
			if(open){
				produitDetailsBox.includeInLayout = false;
				produitDetailsBox.visible = false;
				resizeOff.play();
			}else{
				resizeOn.play();
			}
			open = !open;
		}
		
		private function showDetailsHandler(evt:EffectEvent):void
		{
			produitDetailsBox.includeInLayout = true;
			produitDetailsBox.visible = true;
		}
		
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