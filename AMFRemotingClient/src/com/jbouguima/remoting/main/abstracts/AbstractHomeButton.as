package com.jbouguima.remoting.main.abstracts
{
	import com.jbouguima.remoting.main.components.HomeButton;
	import com.jbouguima.remoting.main.components.ImageButton;
	import com.jbouguima.remoting.main.events.NavigationEvent;
	import com.jbouguima.remoting.main.helpers.ApplicationConst;
	
	import flash.events.MouseEvent;
	
	import mx.effects.Move;
	import mx.events.EffectEvent;
	import mx.events.FlexEvent;
	
	import spark.components.Group;
	import spark.components.Image;
	import spark.effects.Fade;
	
	/**
	 * 
	 * @author: jbouguima
	 *  12/01/2017
	 * 
	 * */
	[Bindable]
	public class AbstractHomeButton extends Group
	{
		
		private var topBtn_x:Number;
		private var topBtn_y:Number;

		private var leftBtn_x:Number;
		private var leftBtn_y:Number;
		
		private var rightBtn_x:Number;
		private var rightBtn_y:Number;
		
		private var bottomBtn_x:Number;
		private var bottomBtn_y:Number;
		
		public var clientBtn:ImageButton;
		public var commandBtn:ImageButton;
		public var productBtn:ImageButton;
		public var factureBtn:ImageButton;
		private var selectedButton:ImageButton;
		public var middleLogo:Image;
		public var moveDessus:Move;
		public var moveDessous:Move;
		public var moveClient:Move;
		public var moveProduct:Move;
		public var moveFacture:Move;
		public var moveCommand:Move;
		public var moveSelected:Move;
		
		public var fadeOut:Fade;
		public var fadeIn:Fade;
		public var fadeOutBtn:Fade;
		
		private var navEvent:NavigationEvent;
		public function AbstractHomeButton()
		{
			super();
			addEventListener(FlexEvent.CREATION_COMPLETE, init);
		}
		
		public function init(evt:FlexEvent):void
		{
			intialiseButtonsPos()
			clientBtn.addEventListener(MouseEvent.CLICK, navigationHandler);
			commandBtn.addEventListener(MouseEvent.CLICK, navigationHandler);
			productBtn.addEventListener(MouseEvent.CLICK, navigationHandler);
			factureBtn.addEventListener(MouseEvent.CLICK, navigationHandler);
		}
		
		private function intialiseButtonsPos():void
		{
			clientBtn.top = 0;
			clientBtn.left = 232;
			
			commandBtn.top = 182;
			commandBtn.left = 0;
			
			productBtn.top = 182;
			productBtn.left = 500-commandBtn.width/2;
			
			factureBtn.top = 364;
			factureBtn.left = 232;
			
			middleLogo.top = this.top + this.height/2 - middleLogo.height/2;
			middleLogo.left = this.left + this.width/2 - middleLogo.width/2;
			
		}
		public function navigationHandler(evt:MouseEvent):void
		{
			navEvent = new NavigationEvent(NavigationEvent.HOME_BTN_NAVIGATION_EVENT,true, false);
			var buttonTarget:ImageButton;
			var targetId:String;
			switch(evt.currentTarget.id)
			{
				case "clientBtn":
				{
					navEvent.destination = ApplicationConst.CLIENT_VIEW;
					buttonTarget = clientBtn;
					targetId = "clientBtn";
					break;
				}
				case "commandBtn":
				{
					navEvent.destination = ApplicationConst.COMMAND_VIEW;
					buttonTarget = commandBtn;
					targetId = "commandBtn";
					break;
				}
				case "productBtn":
				{
					navEvent.destination = ApplicationConst.PRODUCT_VIEW;
					buttonTarget = productBtn;
					targetId = "productBtn";
					break;
				}
				case "factureBtn":
				{
					navEvent.destination = ApplicationConst.FACTURE_VIEW;
					buttonTarget = factureBtn;
					targetId = "factureBtn";
					break;
				}
				default:
				{
					navEvent.destination = ApplicationConst.HOME_VIEW;
					break;
				}
			}
			animateMenu(buttonTarget,targetId);
		}
		
		private function animateMenu(button:ImageButton, idTarget:String):void
		{
			moveDessus.yFrom = middleLogo.y;//this.y + this.height/2 - middleLogo.height/2;
			moveDessus.yTo = -this.y;
			fadeOut.addEventListener(EffectEvent.EFFECT_END, changeViewDispatch);
			intialiseEffet();
			selectedButton = null;
			moveSelected = new Move();
			moveSelected.duration = 500;
			moveSelected.addEventListener(EffectEvent.EFFECT_END, selectionFinishHandler);
			switch(idTarget)
			{
				case "clientBtn":
				{
					moveCommand.play();
					moveProduct.play();
					moveFacture.play();
					moveSelected.yFrom = 0 ;
					moveSelected.yTo = middleLogo.y;
					moveSelected.play([clientBtn], false);
					selectedButton = clientBtn;
					fadeOutBtn.play([commandBtn,productBtn,factureBtn], false);
					break;
				}
				case "commandBtn":
				{
					moveClient.play();
					moveProduct.play();
					moveFacture.play();
					moveSelected.xFrom = 0 ;
					moveSelected.xTo = middleLogo.x;
					moveSelected.play([commandBtn], false);
					selectedButton = commandBtn;
					fadeOutBtn.play([clientBtn,productBtn,factureBtn], false);
					break;
				}
				case "productBtn":
				{
					moveCommand.play();
					moveClient.play();
					moveFacture.play();
					moveSelected.xFrom = 500-commandBtn.width/2 ;
					moveSelected.xTo = middleLogo.x;
					moveSelected.play([productBtn], false);
					selectedButton = productBtn;
					fadeOutBtn.play([commandBtn,clientBtn,factureBtn], false);
					break;
				}
				case "factureBtn":
				{
					moveProduct.play();
					moveCommand.play();
					moveClient.play();
					moveSelected.yFrom = 364 ;
					moveSelected.yTo = middleLogo.y;
					moveSelected.play([factureBtn], false);
					selectedButton = factureBtn;
					fadeOutBtn.play([commandBtn,productBtn,clientBtn], false);
					break;
				}
			}
			moveDessus.play([middleLogo], false);
			fadeOut.play([middleLogo], false);
		}
		
		public function initializMenu():void
		{
			moveDessous.yFrom = middleLogo.y;//this.y + this.height/2 - middleLogo.height/2;
			moveDessous.yTo = this.top + this.height/2 - middleLogo.height/2;
			moveDessous.play([middleLogo], false);
			fadeIn.play([middleLogo,commandBtn,productBtn,clientBtn,factureBtn], false);
			intialiseButtonsPos();
		}
		
		private function intialiseEffet():void
		{
			
			moveClient.yFrom = clientBtn.y
			moveClient.yTo = clientBtn.y - 100;
			moveClient.xFrom = clientBtn.x;
			moveClient.xTo = clientBtn.x + 200;
			
			moveProduct.yFrom = productBtn.y
			moveProduct.yTo = productBtn.y + 200;
			moveProduct.xFrom = productBtn.x;
			moveProduct.xTo = productBtn.x - 100;
			
			moveCommand.yFrom = commandBtn.y
			moveCommand.yTo = commandBtn.y - 200;
			moveCommand.xFrom = commandBtn.x;
			moveCommand.xTo = commandBtn.x + 100;
			
			moveFacture.yFrom = factureBtn.y
			moveFacture.yTo = factureBtn.y - 100;
			moveFacture.xFrom = factureBtn.x;
			moveFacture.xTo = factureBtn.x - 200;
		}
		
		private function selectionFinishHandler(evt:EffectEvent):void
		{
			selectedButton.alpha = 0;
		}
		private function changeViewDispatch(evt:EffectEvent):void
		{
			dispatchEvent(navEvent);
		}
	}
}