package com.jbouguima.remoting.main.abstracts
{
	import com.jbouguima.remoting.main.events.SwichViewsEvent;
	import com.jbouguima.remoting.vo.gestionclient.Client;
	
	import flash.events.MouseEvent;
	
	import mx.events.EffectEvent;
	import mx.events.FlexEvent;
	
	import spark.components.HGroup;
	import spark.components.Image;
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
	public class AbstractClientRenderer extends ItemRenderer
	{
		public var fadeIn:Fade;
		public var fadeOut:Fade;
		public var clientName:String;
		public var clientCode:String;
		public var clientVille:String;
		public var resizeOn:Resize;
		public var resizeOff:Resize;
		private var clientVO:Client;
		private var open:Boolean;
		public var adresseClient:String;
		public var professionClient:String;
		//public var operationsClient:Number;
		public var clientDetailsBox:VGroup;
		public var clientActionBtn:HGroup;
		public var ordersImg:Image;
		
		public function AbstractClientRenderer()
		{
			super();
			addEventListener(FlexEvent.CREATION_COMPLETE, init);
		}
		
		public function init(evt:FlexEvent):void
		{
			addEventListener(MouseEvent.DOUBLE_CLICK, showHideDetails);
			resizeOn.addEventListener(EffectEvent.EFFECT_END, showDetailsHandler);
			ordersImg.addEventListener(MouseEvent.CLICK, showOrdersHandler);
		}
		
		override public function set data(value:Object):void
		{
			super.data = value;
			
			if(value){
				clientVO = value as Client;
				clientName = clientVO.nom?clientVO.nom:" - ";
				clientName += clientVO.prenom?clientVO.prenom:" - ";
				clientCode = clientVO.codeClient;
				
				clientVille = clientVO.adresse && clientVO.adresse.gouvernorat ?
								clientVO.adresse.gouvernorat.nomGouvernorat : " - ";
				
				adresseClient = clientVO.adresse && clientVO.adresse.nomRue ? clientVO.adresse.nomRue+" , ": " - " ;
				
				adresseClient += clientVO.adresse && clientVO.adresse.gouvernorat ? clientVO.adresse.gouvernorat.nomGouvernorat: " - ";
				
				professionClient = clientVO.profession ? clientVO.profession.libelleProfession : " - "
			}
		}
		
		public function showHideDetails(evt:MouseEvent):void
		{
			if(open){
				clientDetailsBox.includeInLayout = false;
				clientDetailsBox.visible = false;
				clientActionBtn.includeInLayout = false;
				clientActionBtn.visible = false;
				resizeOff.play();
			}else{
				resizeOn.play();
			}
			open = !open;
		}
		
		private function showDetailsHandler(evt:EffectEvent):void
		{
			clientDetailsBox.includeInLayout = true;
			clientDetailsBox.visible = true;
			clientActionBtn.includeInLayout = true;
			clientActionBtn.visible = true;
		}
		
		private function showOrdersHandler(evt:MouseEvent):void
		{
			var event:SwichViewsEvent = new SwichViewsEvent(SwichViewsEvent.SHOW_ORDERS_VIEW_EVENT, true, false);
			event.clientVo = this.clientVO;
			this.owner.dispatchEvent(event);
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